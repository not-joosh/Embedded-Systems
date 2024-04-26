 /*======================================================================================================
* FILE        : LE7-1.c
* AUTHOR      : Josh Ratificar,
*               Rodjean Gere
* DESCRIPTION : This program uses the PIC16F877A to test the I2C Debugger in proteus. Simulating Slave Mode.
* TOOLS       : MPLAB, XC8 Compiler, Microbrn, K150 Programmer, PIC16F877A, Visual Studio Code, and Proteus for simulation.
* COPYRIGHT   : 17 April, 2024
* REVISION HISTORY:
*   17 April, 2024: Creation of the FIle
======================================================================================================*/
/*=============================================== 
 *   NOTES SECTION
 *==============================================

*/
#include <xc.h> 
#include <stdio.h>
#include <stdlib.h>

/*=============================================== 
 *   HEADER FILES
 *==============================================*/
#pragma config FOSC = XT 
#pragma config WDTE = OFF 
#pragma config PWRTE = ON 
#pragma config BOREN = ON 
#pragma config LVP = OFF 
#pragma config CPD = OFF 
#pragma config WRT = OFF 
#pragma config CP = OFF 
#define _XTAL_FREQ 4000000
#define delay for(int i = 0; i < 10000; i++)

/*=============================================== 
 *   CONSTANTS and GLobal Variables
 *==============================================*/


/*=============================================== 
 *   FUNCTION PROTOTYPES
 *==============================================*/
void init_I2C_Slave(unsigned char slave_add);
void init_I2C_Master(void);
void I2C_Wait(void);
void I2C_Start(void);
void I2C_Stop(void);
void I2C_RepeatedStart(void);
void I2C_Send(unsigned char data);
unsigned char I2C_Receive(unsigned char ack);
void interrupt ISR(void);
/*===============================================
*   FUNCTION           : MAIN
*   DESCRIPTION        : This function is the main function of the program.
*   PARAMETERS         : VOID
*   RETURNS            : VOID
*===============================================*/
void main(void)
{ // SLAVE DEVICE
    TRISB = 0x00; // set all bits in PORTB to output
    PORTB = 0x00; // all LEDs in PORTB are off
    TRISD = 0xFF; // set all bits in PORTD to input
    init_I2C_Slave(0x10); // initialize I2C as slave with address 0x01
    for(;;)
    {
    }
}

/*SLAVE DEVICE*/
void interrupt ISR()
{
    unsigned char temp;
    CKP = 0; // hold clock low (SSPCON reg)
    if(WCOL || SSPOV) // check if overflow or data collision (SSPCON reg)
    {
        temp = SSPBUF; // read SSPBUF to clear buffer
        WCOL = 0; // clear data collision flag
        SSPOV = 0; // clear overflow flag
        CKP = 1; // release clock (SSPCON reg)
    } 
    /* check operation if “write” or "read"*/
    if(!SSPSTATbits.D_nA && !SSPSTATbits.R_nW) // write to slave
    {
        temp = SSPBUF; // read SSPBUF to clear buffer
        while(!BF); // wait until receive is complete (SSPSTAT reg)
        PORTB = SSPBUF; // write data from master to PORTB
        CKP = 1; // release clock (SSPCON reg)
    }
    else if(!SSPSTATbits.D_nA && SSPSTATbits.R_nW) // read from slave
    {
        temp = SSPBUF; // read SSPBUF to clear buffer
        BF = 0; // clear buffer status bit (SSPSTAT reg)
        SSPBUF = PORTD; // send data from PORTD to master
        CKP = 1; // release clock (SSPCON reg)
        while(BF); // wait until transmit is complete (SSPSTAT reg)
    }
    SSPIF = 0; // clear interrupt flag
} 


/*=============================================== 
 *   SLAVE FUNCTIONS
 *==============================================*/
/*===============================================
*   FUNCTION           : INIT_I2C_SLAVE
*   DESCRIPTION        : This function initializes the I2C as slave.
*   PARAMETERS         : unsigned char slave_add
*   RETURNS            : VOID
*===============================================*/
void init_I2C_Slave(unsigned char slave_add)
{
    TRISC3 = 1; // set RC3 (SCL) to input
    TRISC4 = 1; // set RC4 (SDA) to input
    SSPCON = 0x36; // SSP enabled, SCK release clock
    // I2C slave mode 7-bot address
    SSPCON2 = 0x01; // start condition idle, stop condition idle
    // receive idle
    SSPSTAT = 0x80; // slew rate control disabled
    SSPADD = slave_add; // 7-bit slave address
    SSPIE = 1; // enable SSP interrupt
    SSPIF = 0; // clear interrupt flag
    PEIE = 1; // enable peripheral interrupt
    GIE = 1; // enable unmasked interrupt
} 


/*=============================================== 
 *   MASTER FUNCTIONS
 *==============================================*/
/*===============================================
*   FUNCTION           : INIT_I2C_MASTER
*   DESCRIPTION        : This function initializes the I2C as master.
*   PARAMETERS         : VOID
*   RETURNS            : VOID
*===============================================*/
void init_I2C_Master(void)
{
    TRISC3 = 1; // set RC3 (SCL) to input
    TRISC4 = 1; // set RC4 (SDA) to input
    SSPCON = 0x28; // SSP enabled, I2C master mode
    SSPCON2 = 0x00; // start condition idle, stop condition idle
    // receive idle
    SSPSTAT = 0x00; // slew rate enabled
    SSPADD = 0x09; // clock frequency at 100 KHz (FOSC = 4MHz)
} 

/*===============================================
*   FUNCTION           : I2C_WAIT
*   DESCRIPTION        : This function waits until all I2C operation are finished.
*   PARAMETERS         : VOID
*   RETURNS            : VOID
*===============================================*/
void I2C_Wait(void)
{
    /* wait until all I2C operation are finished*/
    while((SSPCON2 & 0x1F) || (SSPSTAT & 0x04));
} 

/*===============================================
*   FUNCTION           : I2C_START
*   DESCRIPTION        : This function enables the start condition.
*   PARAMETERS         : VOID
*   RETURNS            : VOID
*===============================================*/
void I2C_Start(void)
{
    /* wait until all I2C operation are finished*/
    I2C_Wait();
    /* enable start condition */
    SEN = 1; // SSPCON2
}

/*===============================================
*   FUNCTION           : I2C_STOP
*   DESCRIPTION        : This function enables the stop condition.
*   PARAMETERS         : VOID
*   RETURNS            : VOID
*===============================================*/
void I2C_Stop(void)
{
    /* wait until all I2C operation are finished*/
    I2C_Wait();
    /* enable stop condition */
    PEN = 1; // SSPCON2
} 

/*===============================================
*   FUNCTION           : I2C_REPEATEDSTART
*   DESCRIPTION        : This function enables the repeated start condition.
*   PARAMETERS         : VOID
*   RETURNS            : VOID
*===============================================*/
void I2C_RepeatedStart(void)
{
    /* wait until all I2C operation are finished*/
    I2C_Wait();
    /* enable repeated start */
    RSEN = 1; // SSPCON2
} 

/*===============================================
*   FUNCTION           : I2C_SEND
*   DESCRIPTION        : This function sends data to the I2C buffer.
*   PARAMETERS         : unsigned char data
*   RETURNS            : VOID
*===============================================*/
void I2C_Send(unsigned char data)
{
    /* wait until all I2C operation are finished*/
    I2C_Wait();
    /* write data to buffer and transmit */
    SSPBUF = data;
} 

/*===============================================
*   FUNCTION           : I2C_RECEIVE
*   DESCRIPTION        : This function receives data from the I2C buffer.
*   PARAMETERS         : unsigned char ack
*   RETURNS            : unsigned char
*===============================================*/
unsigned char I2C_Receive(unsigned char ack)
{
    unsigned char temp;
    I2C_Wait(); // wait until all I2C operation are finished
    RCEN = 1; // enable receive (SSPCON2 reg)
    I2C_Wait(); // wait until all I2C operation are finished
    temp = SSPBUF; // read SSP buffer
    I2C_Wait(); // wait until all I2C operation are finished
    ACKDT = (ack)?0:1; // set acknowledge (ACK) or not acknowledge (NACK)
    ACKEN = 1; // enable acknowledge sequence
    return temp;
} 

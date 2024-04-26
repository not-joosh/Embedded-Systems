 /*======================================================================================================
* FILE        : LE7-1.c
* AUTHOR      : Josh Ratificar,
*               Rodjean Gere
* DESCRIPTION : This program uses the PIC16F877A to test the I2C Debugger in proteus. Simulating Master Mode. 
* TOOLS       : MPLAB, XC8 Compiler, Microbrn, K150 Programmer, PIC16F877A, Visual Studio Code, and Proteus for simulation.
* COPYRIGHT   : 17 April, 2024
* REVISION HISTORY:
*   17 April, 2024: Creation of the FIle
======================================================================================================*/
/*=============================================== 
 *   NOTES SECTION
 *==============================================
The MSSP module in I2C mode fully implements all master and slave functions (including general
call support) and provides interrupts on Start and Stop bits in hardware to determine a free bus
(multi-master function). It also implements the standard mode specifications, as well as 7-bit and
10-bit addressing. Two pins are used for data transfer:
- Serial clock(SCL)–RC3/SCK/SCL
- Serial data(SDA)–RC4/SDI/SDA 

REGISTERS:
- MSSP Control Register (SSPCON)*
- MSSP Control Register 2 (SSPCON2)
- MSSP StatusRegister (SSPSTAT)
- Serial Receive/Transmit Buffer Register (SSPBUF)
- MSSP Shift Register (SSPSR)**
- MSSP Address Register (SSPADD)

Initialization (Master Mode)
- Set RC3 (SCL) and RC4 (SDA) pins to input.
- Enable synchronous serial port via the SSPEN bit in SSPCON1.
- Configure MCU to operate in Master Mode (SSPM3:SSPM0) in SSPCON1.
- Set start and stop condition to idle (SEN, PEN) in SSPCON2.
- Set receive and acknowledge enable to idle (RCEN, ACKEN) in SSPCON2.
- Configure clock speed by setting SSPADD lower 7-bit to the baud rate generator reload value.

SSPADD = (FOSC / (4 * F_SCL)) - 1
SSPADD = (4MHZ / (4 * 100KHZ)) - 1
SSPADD = 9 or 0x09
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
void init_I2C_Master(void);
void I2C_Wait(void);
void I2C_Start(void);
void I2C_Stop(void);
void I2C_RepeatedStart(void);
void I2C_Send(unsigned char data);
unsigned char I2C_Receive(unsigned char ack);


/*===============================================
*   FUNCTION           : MAIN
*   DESCRIPTION        : This function is the main function of the program.
*   PARAMETERS         : VOID
*   RETURNS            : VOID
*===============================================*/
void main(void)
{
    TRISD = 0xFF; // set all bits in PORTD to input
    init_I2C_Master(); // initialize I2C as master
    for(;;)
    {
        I2C_Start(); // initiate start condition
        I2C_Send(0x10); // send the slave address + write
        I2C_Send(PORTD); // send 8-bit data frame
        I2C_Stop(); // initiate stop condition
        __delay_ms(200); // delay before next operation
    }
}

/*=============================================== 
 *   MASTER AND SLAVE FUNCTIONS
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

void I2C_Wait(void)
{
    /* wait until all I2C operation are finished*/
    while((SSPCON2 & 0x1F) || (SSPSTAT & 0x04));
} 

void I2C_Start(void)
{
    /* wait until all I2C operation are finished*/
    I2C_Wait();
    /* enable start condition */
    SEN = 1; // SSPCON2
}
void I2C_Stop(void)
{
    /* wait until all I2C operation are finished*/
    I2C_Wait();
    /* enable stop condition */
    PEN = 1; // SSPCON2
} 


void I2C_RepeatedStart(void)
{
    /* wait until all I2C operation are finished*/
    I2C_Wait();
    /* enable repeated start */
    RSEN = 1; // SSPCON2
} 

void I2C_Send(unsigned char data)
{
    /* wait until all I2C operation are finished*/
    I2C_Wait();
    /* write data to buffer and transmit */
    SSPBUF = data;
} 

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
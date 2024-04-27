 /*======================================================================================================
* FILE        : LE7-3.c
* AUTHOR      : Josh Ratificar,
*               Rodjean Gere
* DESCRIPTION : This is a program that will read the temperature and humidity from the DHT11 sensor and display it on the LCD.
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
#include <math.h>

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
#define delay for(int i = 0; i < 1000; i++)
#define RS RD0
#define RW RD1
#define EN RD2

/*=============================================== 
 *   CONSTANTS and GLobal Variables
 *==============================================*/
int temperature = 0x00;         // T = -46.85 + 175.72 * (St / 2^RES)
int relative_humidity = 0x00;   // RH = -6 + 125 * (Srh / 2^RES)

/*=============================================== 
 *   FUNCTION PROTOTYPES
 *==============================================*/
// CUSTOM FUNCTIONS

// LCD FUNCTION PROTOTYPES
void initLCD(void);
void dataCtrl(unsigned char data);
void instCtrl(unsigned char inst);
void printString(char *string);

// MASTER AND SLAVE FUNCTION PROTOTYPES
void init_I2C_Master(void);
void I2C_Wait(void);
void I2C_Start(void);
void I2C_Stop(void);
void I2C_RepeatedStart(void);
void I2C_Send(unsigned char data);
unsigned char I2C_Receive(unsigned char ack);
void updateDisplay(void);


/*===============================================
*   FUNCTION           : MAIN
*   DESCRIPTION        : This function is the main function of the program. The 
*                        PIC16F877A will read the temperature and humidity from 
*                        the DHT11 sensor and display it on the LCD. 
*   PARAMETERS         : VOID
*   RETURNS            : VOID
*===============================================*/
void main(void)
{ // MASTER
    // SRH is the 14-bit digital data for relative humidity and RES 
    // is the resolution which is 14-bits
    // RESOLUTION
    int resolution = pow(2, 14);
    int MSB = 0x00; int LSB = 0x00;

    // PORT CONFIGURATION
    TRISD = 0x00; // set PORTD as output
    PORTD = 0x00; // clear PORTD
    TRISB = 0x00; // set PORTB as output
    PORTB = 0x00; // clear PORTB

    init_I2C_Master(); // initialize I2C as master
    initLCD(); // initialize LCD
    for(;;)
    {
        // Humidity Reading
        I2C_Start(); // initiate start condition
        I2C_Send(0x80); // send the slave address + write
        I2C_Send(0xE5); // Command for DHT11 (Reading Humidity)
        I2C_RepeatedStart(); // initiate repeated start condition
        I2C_Send(0x81); // send the slave address + read
        MSB = I2C_Receive(1); // read the humidity
        LSB = I2C_Receive(0); // read the temperature
        I2C_Stop(); // initiate stop condition
        __delay_ms(200); // delay before next operation
        MSB = MSB << 6;
        LSB = LSB >> 2;
        int temp_humidity = MSB | LSB;
        relative_humidity = (int)(-6 + (125 * ((float)temp_humidity / (float)resolution)));
        MSB = 0x00; LSB = 0x00; // Clearing MSB and LSB 
        __delay_ms(200); // delay before next operation

        // Temperature Reading
        I2C_Start(); // initiate start condition
        I2C_Send(0x80); // send the slave address + write
        I2C_Send(0xE3); // Command for DHT11 (Reading Temperature)
        I2C_RepeatedStart(); // initiate repeated start condition
        I2C_Send(0x81); // send the slave address + read
        MSB = I2C_Receive(1); // read the humidity
        LSB = I2C_Receive(0); // read the temperature
        I2C_Stop();
        MSB = MSB << 6;
        LSB = LSB >> 2;
        int temp_temperature = MSB | LSB;
        temperature = (int)(-46.85 + (175.72 * ((float)temp_temperature / (float)resolution)));

        // Displaying the Humidity and Temperature        
        updateDisplay();
        __delay_ms(200); // delay before next operation
        delay;
    }
}

/*=============================================== 
 *   CUSTOM FUNCTIONS
 *==============================================*/
/*===============================================
*   FUNCTION           : UPDATE_DISPLAY
*   DESCRIPTION        : This function updates the display of the LCD.
*   PARAMETERS         : VOID
*   RETURNS            : VOID
*===============================================*/
void updateDisplay(void)
{
    // First we clear anything after the "Humidity: " and "Temperature: " strings
    instCtrl(0x8A); // set cursor to 2nd line
    printString("    "); // clear the humidity value
    instCtrl(0xCC); // set cursor to 2nd line
    printString("    "); // clear the temperature value

    // Displaying the Relative Humidity Value 
    instCtrl(0x80); // set cursor to 2nd line
    printString("Humidity: ");
    char humidity[10];
    sprintf(humidity, "%d", relative_humidity);
    printString(humidity);
    dataCtrl('%'); // display the percentage symbol

    // Displaying the Temperature Value
    instCtrl(0xC0); // set cursor to 2nd line
    printString("Temperature: ");
    char temp[10];
    sprintf(temp, "%d", temperature);
    printString(temp);
    dataCtrl('C'); // display the Celcius symbol
    delay;
}

/*=============================================== 
 *   LCD FUNCTIONS
 *==============================================*/
/*===============================================
*   FUNCTION           : INITLCD
*   DESCRIPTION        : This function initializes the LCD.
*   PARAMETERS         : VOID
*   RETURNS            : VOID
*===============================================*/
void initLCD(void) 
{
    instCtrl(0x38); // 8-bit mode, 2-line, 5x7 font
    instCtrl(0x0C); // display on, cursor off
    instCtrl(0x01); // clear display
    instCtrl(0x06); // increment cursor
    instCtrl(0x80); // set cursor to 1st line
}

/*===============================================
*   FUNCTION           : DATACTRL
*   DESCRIPTION        : This function controls the data to be displayed on the LCD.
*   PARAMETERS         : unsigned char data
*   RETURNS            : VOID
*===============================================*/
void dataCtrl(unsigned char data)
{
    RS = 1; // set RS to data mode
    PORTB = data; // send data to PORTD
    EN = 1; // enable data
    delay; // delay
    EN = 0; // disable data
}

/*===============================================
*   FUNCTION           : INSTCTRL
*   DESCRIPTION        : This function controls the instructions to be displayed on the LCD.
*   PARAMETERS         : unsigned char inst
*   RETURNS            : VOID
*===============================================*/
void instCtrl(unsigned char inst)
{
    RS = 0; // set RS to instruction mode
    PORTB = inst; // send instruction to PORTD
    EN = 1; // enable instruction
    delay; // delay
    EN = 0; // disable instruction
}

/*===============================================
*   FUNCTION           : PRINTSTRING
*   DESCRIPTION        : This function prints the string on the LCD.
*   PARAMETERS         : char *string
*   RETURNS            : VOID
*===============================================*/
void printString(char *string)
{
    while(*string)
    {
        dataCtrl(*string++);
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
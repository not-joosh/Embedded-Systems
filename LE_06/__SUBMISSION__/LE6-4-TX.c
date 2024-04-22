 /*======================================================================================================
* FILE        : LE6-4-TX.c
* AUTHOR      : Josh Ratificar, Rodjean Gere,
*               Rhett Surban, Ivan Galicia
* DESCRIPTION : This program uses the PIC16F877A and its USART communication. This script replicates the TRANSMITTER entity.
* TOOLS       : MPLAB, XC8 Compiler, Microbrn, K150 Programmer, PIC16F877A, Visual Studio Code, and Proteus for simulation.
* COPYRIGHT   : 17 April, 2024
* REVISION HISTORY:
*   17 April, 2024: Creation of the FIle
======================================================================================================*/
#include <xc.h> 
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

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
#define DAVBL RD4
#define delay for(int i = 0; i < 1000; i++)

/*=============================================== 
 *   CONSTANTS and GLobal Variables
 *==============================================*/
unsigned char keypadValue = 0x00;
unsigned char count_flag = 0;
enum Keys 
{
	KEY_1 = 0x00, // 0000
	KEY_2 = 0x01, // 0001
	KEY_3 = 0x02, // 0010
	KEY_4 = 0x04, // 0100
	KEY_5 = 0x05, // 0101
	KEY_6 = 0x06, // 0110
	KEY_7 = 0x08, // 1000
	KEY_8 = 0x09, // 1001
	KEY_9 = 0x0A, // 1010
	KEY_0 = 0x0D, // 1101
    KEY_ASTERIX = 0x0C, // 1100
    KEY_HASH = 0x0E // 1110
};


/*=============================================== 
 *   FUNCTION PROTOTYPES
 *==============================================*/
// read Keypad fuction prototype
void readKeypad(void);
bool handshake(char dataIn);

/*===============================================
*   FUNCTION           : main
*   INPUT PARAMETERS   : void
*   RETURNS            : void
*   DESCRIPTION        : This is the main function of the program
*                        It initializes the ports and the USART
*                        It also waits for the keypad to be pressed
*                        and sends the value to the receiver
 *==============================================*/
void main(void)
{
    // Setting up Port D
    // TRISD = 0xFF; // Port D as input for the keypad
    // PORTD = 0x00; // Clear port d
    TRISC = 0x00; // Port C as output for the LED
    PORTC = 0x00; // Clear port c
    // Setting up Timer for Debounce. 
    SPBRG = 0x19; // 9.6K baud rate @ FOSC=4MHz, asynchronous high speed
    // (see formula in Table 10-1)
    SYNC = 0; // asynchronous mode (TXSTA reg)
    SPEN = 1; // enable serial port (RCSTA reg)s
    TX9 = 0; // 8-bit transmission (TXSTA reg)
    BRGH = 1; // asynchronous high-speed (TXSTA reg)
    TXEN = 1; // transmit enable (TXSTA reg)
    for(;;) // foreground routinemp
    {
        // Waiting on the keypad to be pressed
        if(DAVBL)
        {
            readKeypad();
            handshake(keypadValue);
            delay;
        }
        // while(); // wait until transmit shift register is empty
        // TXREG = ‘A’; // write data to be sent to TXREG
    }
}


/*===============================================
*   FUNCTION           : readKeypad
*   INPUT PARAMETERS   : void
*   RETURNS            : void
*   DESCRIPTION        : This function reads the value of the keypad
*                        and assigns the corresponding value to the
*                        keypadValue variable
 *==============================================*/
void readKeypad(void)
{
    char keypress = 0x0F & PORTD; // Read the value of the keypad
    switch(keypress)
    {
        case KEY_1: // 1110
            keypadValue = 0x06;// '1';
            break;
        case KEY_2: // 1101
            keypadValue = 0x5B;// '2';
            break;
        case KEY_3: // 1011
            keypadValue = 0x4F;// '3';
            break;
        case KEY_4: // 0111
            keypadValue = 0x66;// '4';
            break;
        case KEY_5: // 0110
            keypadValue = 0x6D;// '5';
            break;
        case KEY_6: // 0101
            keypadValue = 0x7D ;//'6';
            break;
        case KEY_7: // 0011
            keypadValue = 0x07; //'7';
            break;
        case KEY_8: // 0010
            keypadValue = 0x7F;// '8';
            break;
        case KEY_9: // 0001
            keypadValue = 0x6F; // '9';
            break;
        case KEY_0: // 1000
            keypadValue =  0x3F;
            break;
        default:
            keypadValue = 0xFF; // Invalid key
            break;
    }
}

bool handshake(char dataIn)
{
    while(!TRMT); // wait until transmit shift register is empty
    TXREG = dataIn; // write data to be sent to TXREG
    return true;
}
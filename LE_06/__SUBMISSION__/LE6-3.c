 /*======================================================================================================
* FILE        : LE6-3.c
* AUTHOR      : Josh Ratificar,
*               Rodjean Gere
* DESCRIPTION : This program uses the PIC16F877A and its USART communication. This script replicates the SENDER entity.
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
#define delay for(int i = 0; i < 10000; i++)

/*=============================================== 
 *   CONSTANTS and GLobal Variables
 *==============================================*/
unsigned char keypadValue = 0x00;
unsigned char count_flag = 0;
unsigned char message1[] = "You pressed 1. \n";
unsigned char message2[] = "You pressed 2. \n";

enum Keys 
{
	KEY_1 = 0x00, // 0000
	KEY_2 = 0x01, // 0001
};


/*=============================================== 
 *   FUNCTION PROTOTYPES
 *==============================================*/
void readKeypad(void);
bool handshake(char dataIn);

/*THIS IS SENDER ENTITY.*/
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
    }
}

void readKeypad(void)
{
    char keypress = 0x0F & PORTD; // Read the value of the keypad
    switch(keypress)
    {
        case KEY_1: // 1110
            keypadValue = KEY_1;
            break;
        case KEY_2: // 1101
            keypadValue = KEY_2;
            break;
        default:
            keypadValue = 0xFF; // Invalid key
            break;
    }
}

bool handshake(char dataIn)
{
    while(!TRMT); // wait until transmit shift register is empty
    if(keypadValue == KEY_1)
    {
        for(int i = 0; i < sizeof(message1); i++)
        {
            TXREG = message1[i];
            while(!TRMT);
        }
        TXREG = 0x0D; // New line character
        while(!TRMT);
    }
    else if(keypadValue == KEY_2)
    {
        for(int i = 0; i < sizeof(message2); i++)
        {
            TXREG = message2[i];
            while(!TRMT);
        }
        TXREG = 0x0D; // New line character
        while(!TRMT);
    }
    else
        return false;
        // Then we will also send a new line character
    delay;
    return true; // iF the message is sent successfully
}
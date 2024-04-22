 /*======================================================================================================
* FILE        : LE6-1.c
* AUTHOR      : Josh Ratificar,
*               Rodjean Gere
* DESCRIPTION : This program uses the PIC16F877A and its USART communication to send, read data
* TOOLS       : MPLAB, XC8 Compiler, Microbrn, K150 Programmer, PIC16F877A, Visual Studio Code, and Proteus for simulation.
* COPYRIGHT   : 17 April, 2024
* REVISION HISTORY:
*   17 April, 2024: Creation of the FIle
======================================================================================================*/
#include <xc.h> 
#include <stdio.h>

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


/*=============================================== 
 *   CONSTANTS and GLobal Variables
 *==============================================*/

/*=============================================== 
 *   FUNCTION PROTOTYPES
 *==============================================*/
void interrupt ISR(void);
int readADC(void);
void delay(int delayIn);


void main(void)
{
    SPBRG = 0x19; // 9.6K baud rate @ FOSC=4MHz, asynchronous high speed
    // (see formula in Table 10-1)
    SYNC = 0; // asynchronous mode (TXSTA reg)
    SPEN = 1; // enable serial port (RCSTA reg)
    TX9 = 0; // 8-bit transmission (TXSTA reg)
    BRGH = 1; // asynchronous high-speed (TXSTA reg)
    TXEN = 1; // transmit enable (TXSTA reg)
    for(;;) // foreground routine
    {
    while(!TRMT); // wait until transmit shift register is empty
    TXREG = ‘A’; // write data to be sent to TXREG
    }
}

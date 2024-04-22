 /*======================================================================================================
* FILE        : LE6-4-RX.c
* AUTHOR      : Josh Ratificar, Rodjean Gere,
*               Rhett Surban, Ivan Galicia
* DESCRIPTION : This program uses the PIC16F877A and its USART communication. This script replicates the RECEIVER entity.
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
#define delay for(int i = 0; i < 10000; i++)

/*=============================================== 
 *   CONSTANTS and GLobal Variables
 *==============================================*/
unsigned char receivedData = 0x00;


/*=============================================== 
 *   FUNCTION PROTOTYPES
 *==============================================*/
void handShake(void);

void main(void)
{

    // Configuration of USART
    SPBRG = 0x19;
    SYNC = 0;
    SPEN = 1;
    BRGH = 1;
    CREN = 1;
    RX9 = 0;
    //RCIE = 1; 
    TRISB = 0x00;
    PORTB = 0x00;
    TRISD = 0x00;
    PORTD = 0x00;

    for(;;)
    {  
       	handShake();
    }
}

    // Read
void handShake() 
{//what was received
    while(!RCIF); // WAIT until the data receive is complete
    receivedData = RCREG;
    if(receivedData == 0xFF)
        PORTB = 0x00;
    else
        PORTB = receivedData;
    return;
}   

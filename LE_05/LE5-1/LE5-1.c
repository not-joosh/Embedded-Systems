 /*======================================================================================================
* FILE        : LE5-1.c
* AUTHOR      : Josh Ratificar,
*               Rodjean Gere
* DESCRIPTION : This program is a simple program that reads the ADC value and displays the value on the LED Bar Graph 
*               using the PIC16F877A microcontroller.
* TOOLS       : MPLAB, XC8 Compiler, Microbrn, K150 Programmer, PIC16F877A, Visual Studio Code, and Proteus for simulation.
* COPYRIGHT   : 2 April, 2024
* REVISION HISTORY:
*   2 April, 2024: Initial Release of Completed Code. Start of actual documentation
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

/*===============================================
*   FUNCTION           : ISR
*   DESCRIPTION        : This function is the interrupt service routine for the program.
*                        It reads the ADC value and sets the LEDs based on the value of the ADC.
*   PARAMETERS         : VOID
*   RETURNS            : VOID
*===============================================*/
void interrupt ISR()
{
    GIE = 0;
    int d_value = 0;
    if(ADIF == 1) // Page 134 on the datasheet
    {
        ADIF = 0;
        d_value = readADC(); // get ADC value 
        /* setting the LEDs */ 
        if(d_value>=0 && d_value<=169) 
            PORTB = 0x00; // all LEDs OFF 
        else if(d_value>=170 && d_value<=340) 
            PORTB = 0x01; // RB0 LED ON 
        else if(d_value>=341 && d_value<=511) 
            PORTB = 0x03; // RB1 LED ON 
        else if(d_value>=512 && d_value<=682) 
            PORTB = 0x07; // RB2 LED ON 
        else if(d_value>=683 && d_value<=853) 
            PORTB = 0x0F; // RB3 LED ON 
        else if(d_value>=854 && d_value<=1024) 
            PORTB = 0x1F; // RB4 LED ON 
    }
    delay(1000);
    GO = 1;
    GIE = 1;
}

/*===============================================
*   FUNCTION           : main
*   DESCRIPTION        : This function is the main routine for the program. It sets up the Capture Module
*                        of the PIC16F877A microcontroller to measure the period of a PWM signal. The period
*                        of the PWM signal coming in at RC2 is displayed on an LCD screen.
*   PARAMETERS         : VOID
*   RETURNS            : VOID
*===============================================*/
void main() 
{
    TRISB = 0x00; // set all PORTB as output 
    PORTB = 0x00; // all LEDs are off 
    ADCON1 = 0x80; // result: right Justified, clock: FOSC/2 
    // all ports in PORTA are analog 
    // VREF+: VDD, VREF-: VSS 
    ADCON0 = 0x41; // clock: FOSC/2, analog channel: AN0, 
    // A/D conversion: STOP, A/D module: ON 
    PEIE = 1; 
    ADIE = 1; 
    ADIF = 0; 
    GIE = 1; 
    GO = 1; 
    for(;;) // foreground routine 
    { 
    } 
}

/*===============================================
*   FUNCTION           : readADC
*   DESCRIPTION        : This function reads the ADC value from the ADC registers.
*   PARAMETERS         : VOID
*   RETURNS            : INT
*===============================================*/
int readADC(void) 
{ 
    int temp = 0;
    temp = ADRESH;    
    temp = temp << 8; 
    temp = temp | ADRESL; 
    return temp; 
}

/*===============================================
*   FUNCTION           : delay
*   DESCRIPTION        : This function is a simple delay function.
*   PARAMETERS         : INT
*   RETURNS            : VOID
*===============================================*/
void delay(int delayIn)
{
    for(int i = 0; i < delayIn; i++);
} 


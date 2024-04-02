 /*======================================================================================================
* FILE        : LE5-2.c
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
{ // 4.995
    int d_value = 0; 
    if(ADIF == 1)
    {
        // Resolution: 2^10 = 1024
        // Vref = 5V 
        // 5V / 1024 = 0.0048828125 
        // 0.0048828125 * 1023 = 4.9951171875
        // Converting the ADC value to voltage using the formula: ADC * 0.0048828125

        ADIF = 0;

        // First step Read the ADC
        d_value = readADC(); // get ADC value

        // Second step Convert the ADC value to voltage 0048828125
        int resultOfConversion = ((float) d_value * 0.0049) * 10; //4.882 mV step voltage

        // splitting resultOfConversion

        // Third step Round the result to one decimal place
        // result of conversion could be 4.824, we need to round it to 4.8
        // int rounded_result = (int)(resultOfConversion + 0.5); // Simple rounding to nearest integer

        // Note that if we have 4.8 as our output, we want to display out on port B where Bits 0-3 is "4" and Bits 4-7 is "8"
        // We can do this by shifting the whole number to the left by 4 bits and then ORing it with the decimal number
        // Fourth step Convert the formatted result to the format that will be displayed on the LEDs
        int decimal_number = resultOfConversion / 10; // Get the whole number part
        int whole_number = resultOfConversion % 10; // Get the decimal number part
        int result = (whole_number << 4) | decimal_number; // Combine for display on PORTB
        // Fifth step Display the result on the LEDs
        PORTB = result;
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


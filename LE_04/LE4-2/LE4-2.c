/*
*   NOTES:
*   TIMER2
*   PR2 = Period 2 (8-bit period)
*   TMR2 = Timer 2, chases PR2, until TMR2 matches pr2, it does not interrupt upon overflow unlike TMR1 and TMR0
// Every time TMR2 would be equal to PR2, interrupt is generated and the output of RA0 is toggled. 
// Determining the period given the frequency of 1000Hz: 
// p = 1/f = 1/1000 = 0.001 s
// 0.0005 s = (1 / (frequency/4) x 4 x Timer Max Count)
// Therefor, Timer Max Count = 125
// the value of PR2 must be set to 125 to match it to TMR2.
*/
#include <xc.h> 

/**
 * 1 ms,  0.001 s = (1/(freq / 4) * 4 * Timer Max Count)
 * Timer Max Count = 0.001 / ((1/freq / 4) * 4)
 * Timer Max Count = 250
*/



// Configuration settings
#pragma config FOSC = XT 
#pragma config WDTE = OFF 
#pragma config PWRTE = ON 
#pragma config BOREN = ON 
#pragma config LVP = OFF 
#pragma config CPD = OFF 
#pragma config WRT = OFF 
#pragma config CP = OFF 
#define _XTAL_FREQ 4000000

void interrupt ISR(void)
{
    GIE = 0; // disable all unmasked interrupts (INTCON reg) 
    if(TMR2IF==1) // checks Timer2 interrupt flag (TMR2=PR2)
    {
        TMR2IF = 0; // clears interrupt flag
        RA0 = RA0^1; // toggles the output signal at RA0
    }
    GIE = 1; // enable all unmasked interrupts (INTCON reg)
}

void main() 
{  
    ADCON1 = 0x06; // set all pins in PORTA as digital I/O
    TRISA = 0x00; // sets all of PORTA to output
    RA0 = 0; // initialize RA0 to 0
    TMR2IE = 1; // enable Timer2/PR2 match interrupt (PIE1 reg)
    TMR2IF = 0; // reset interrupt flag (PIR1 reg)
    PEIE = 1; // enable all peripheral interrupt (INTCON reg)
    GIE = 1; // enable all unmasked interrupts (INTCON reg)


    T2CON = 0x01; // 1:4 prescaler, Timer2 off
    PR2 = 0x7D; // match value for TMR2(125)at half cycle
    // PR2 = 0xFA; // match value for TMR2(125)at half cycle
    TMR2ON = 1; // Turns on Timer2 (T2CON reg)
    for(;;) // foreground routine
    {
    }
}
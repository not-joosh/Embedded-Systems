/*
 * NOTES:
 * CCP Module
 * COMPARE MODE
 * 16-bit CCPR1 register value is constantly compared against the TMR1
 * Generate a pulse-wave with a frequency of 100Hz at 50% duty cycle. The output pulse-wave will be 
 * at RA0. Assume Fosc = 4MHz.
 * 
 * 
*/

#include <xc.h> 

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
    if(CCP1IF==1) // checks CCP1 interrupt flag 
    {
        CCP1IF = 0; // clears interrupt flag
        RA0 = RA0^1; // toggles the output signal at RA0
    }
    GIE = 1; // enable all unmasked interrupts (INTCON reg)
}

/**
 * Compares Timer Max count with Timer1, if Timer1 = Timer Max Count, then trigger interrupt
 * 1:4 for Timer1
 * period = 1/f = 1/100 = 0.01s
 * 0.005 s = (1 / (freq/4) * 4 * Timer Max Count)
 * Timer Max Count = 1250 or 0x4E2
 * Compare mode, generate software interrupt on match (CCPxIF bit is set, CCPx pin is
 * unaffected)
*/
void main() 
{
    ADCON1 = 0x06; // set all pins in PORTA as digital I/O
    TRISA = 0x00; // sets all of PORTA to output
    RA0 = 0; // initialize RA0 to 0
    T1CON = 0x20; // 1:4 prescaler, Timer1 off
    CCP1CON = 0x0A; // compare mode: generate interrupt on match
    CCP1IE = 1; // enable TMR1/CCP1 match interrupt (PIE1 reg)
    CCP1IF = 0; // reset interrupt flag (PIR1 reg)
    CCPR1 = 0x4E2; // set the match value to TMR1
    PEIE = 1; // enable all peripheral interrupt (INTCON reg)
    GIE = 1; // enable all unmasked interrupts (INTCON reg)
    TMR1ON = 1; // Turns on Timer2 (T1CON reg)


    for(;;) // foreground routine
    {
    }
}
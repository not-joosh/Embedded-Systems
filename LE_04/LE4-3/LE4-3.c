/*
 * NOTES:
 * CCP Module 
 * Capture/Compare/PWM Module 16-bit
 * both the CCP1 and CCP2 modules are identical in operation, with the exception being 
 * the operation of the special event trigger
 *  prescaler of 1:8 for Timer1
 *   timeout = 1/(frequency / 4) * 8 * 1 (Timer Max Count is set to 1 since we need to determine the timeout per Timer1 increment)
 *   t im eou t = 8x10−6 s 
 *   t im eou tn = 8x10−6 s x 1x106 = 8 s
*/


/**
 * Attempting every 4th
 * 1/(frequency / 4) * 4 * 1
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
    int period = 0; 
    GIE = 0; // disable all unmasked interrupts (INTCON reg) 
    if(CCP1IF==1) // checks CCP1 interrupt flag 
    {
        CCP1IF = 0; // clears interrupt flag
        TMR1 = 0; // resets TMR1 
        period = CCPR1/1000; // transfers captured TMR1 value
        // normalize the value (make the number smaller)
        period = period*8; // multiply by the normalized TMR1 timeout
        // Toggle Port B LED
        PORTB = ~PORTB; // toggle PORTB // For testing Purpose, no need for this shit

    }
    GIE = 1; // enable all unmasked interrupts (INTCON reg)
}

// Page 66 in Data sheet
/**
 * CCPxM3:CCPxM0: CCPx Mode Select bits
0000 = Capture/Compare/PWM disabled (resets CCPx module)
0100 = Capture mode, every falling edge
0101 = Capture mode, every rising edge
0110 = Capture mode, every 4th rising edge
0111 = Capture mode, every 16th rising edge
1000 = Compare mode, set output on match (CCPxIF bit is set)
1001 = Compare mode, clear output on match (CCPxIF bit is set)
1010 = Compare mode, generate software interrupt on match (CCPxIF bit is set, CCPx pin is
unaffected)
1011 = Compare mode, trigger special event (CCPxIF bit is set, CCPx pin is unaffected); CCP1
resets TMR1; CCP2 resets TMR1 and starts an A/D conversion (if A/D module is
enabled)
11xx = PWM mode
*/
void main() 
{
    TRISC = 0x04; // set RC2 to input
    T1CON = 0x30; // 1:8 prescaler, Timer1 off
    CCP1IE = 1; // enable TMR1/CCP1 match interrupt (PIE1 reg)
    CCP1IF = 0; // reset interrupt flag (PIR1 reg)
    PEIE = 1; // enable all peripheral interrupt (INTCON reg)
    GIE = 1; // enable all unmasked interrupts (INTCON reg)
    TMR1ON = 1; // Turns on Timer1 (T1CON reg)

    CCP1CON = 0x05; // capture mode: every rising edge
    CCP2CON = 0x05; // capture mode: every rising edge
    // CCP1CON = 0x06; // Every fourth  (every 4 clicks on the button, then we light up port b)
    

    // CCP1CON = 0x07; // Every 16th (every 16 clicks on the button, then we light up port b)
    
    // Testing the LED to see if its working HAHAHAHAH
    TRISB = 0x00; // set PORTB as output
    PORTB = 0x00; // clear PORTB

    for(;;) // foreground routine
    {
    }
}
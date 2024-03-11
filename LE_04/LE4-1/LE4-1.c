/*
*   NOTES:
*   Overflow Timeout
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



/*
4 cycles

    // TIMER1 16 bits wide
    // 2^16 = 65536
    // Timer Max Count = 62500
    // timeout = (1/(freq/4) * 8 * Timer Max Count)


    // TMR1 = 0x0BDC (3036) [Maximum Count - Timer Max Count]
    //                      [65536 - 62500 = 3036]

*/
void interrupt ISR(void)
{
    GIE = 0; // disable all unmasked interrupts (INTCON reg) 
    if(TMR1IF==1) // checks Timer1 interrupt flag 
    {
        TMR1IF = 0; // clears interrupt flag
        TMR1 = 0x0BDC; // timer will start counting at 0x0BDC (3036) 
        RA0 = RA0^1; // toggles the LED at RA0
    }
    GIE = 1; // enable all unmasked interrupts (INTCON reg)
}

void main() 
{  
    ADCON1 = 0x06; // set all pins in PORTA as digital I/O
    TRISA = 0x00; // sets all of PORTA to output
    RA0 = 0; // initialize RA0 to 0 (LED off)
    T1CON = 0x30; // 1:8 prescaler, internal clock, Timer1 off
    TMR1IE = 1; // enable Timer1 overflow interrupt (PIE1 reg)
    TMR1IF = 0; // reset interrupt flag (PIR1 reg)
    PEIE = 1; // enable all peripheral interrupt (INTCON reg)
    GIE = 1; // enable all unmasked interrupts (INTCON reg)
    TMR1 = 0x0BDC; // counter starts counting at 0x0BDC (3036)
    TMR1ON = 1; // Turns on Timer1 (T1CON reg)
    for(;;) // foreground routine
    {
    }
}
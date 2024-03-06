/*
 * NOTES:
 * CCP Module
 * PWM Module <--- Focus
 * PWM period is specified by writing to the PR2 register
 * PWM Period = [(PR2) + 1] * 4 * Tosc
 * 
 * 
 * When TMR2 is equal to PR2, the following three events occur on the next increment cycle:
 * - TMR2 is cleared
 * - The CCP1 pin is set (exception: if PWM duty cycle = 0%, the CCP1 pin will not be set)
 * - The PWM duty cycle is latched from CCPR1L into CCPR1H
 * 
 * PWM Duty Cycle = (CCPR1L:CCPICON<5:4>) * Tosc * (TMR2 Prescale Value)
 * 
 * CCPR1L and CCP1CON<5:4> can be written to at any time, but the duty cycle value is not latched 
 * into CCPR1H until after a match between PR2 and TMR2 occurs (i.e., the period is complete). In 
 * PWM mode, CCPR1H is a read-only register.
 * 
 * 
 * Practice Problem:
 * Configure the CCP1 Module to operate in PWM mode which outputs a signal with a 70% duty cycle 
 * at a frequency of 500Hz. Assume that Fosc = 4MHz.
 * 
 * Calculating the value of PR2 given a period of 1/500Hz (0.002 s) and Timer2 prescaler at 1:16:
 * .002 s = [(PR2) + 1] x 4 x (2.5x10−7) x 16
 * PR2 = 124 (0x 7C )
 * 
 * 
 * Calculating the 10-bit resolution value given a duty cycle of 70%. The PWM duty cycle should be 
 * given in time that is 0.7 x 0.002s = 1.4ms.
 * 1.4x10−3 = (CCPR1L : CCP1CON < 5 : 4 > ) x (1/4MHz) x 16
 * CCPR1L : CCP1CON < 5 : 4 > =  350 or 01010111102
 * CCPR1L can only store 8 bits  01010111    10 gets stored into CCP1CON<5:4>
 * 
 * Therefore
 * CCPR1L = 01010111 or 0x57
 * CCP1CON < 5 : 4 > = 10 or 0x2
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


/**
 * Timer2 Page 63 on data sheet
 * 
 * PWM Page 66 & 70, CCP1CON stores 0x2, but we set 0x2C to set to PWM mode 11xx
*/
void main() 
{
    /* following the steps in setting up PWM */
    PR2 = 0x7C; // set value for PR2
    CCPR1L = 0x57; // set value for (8 MSBs)
    CCP1CON = 0x2C; // set value for (2 LSBs), PWM mode
    TRISC = 0x00; // sets all of PORTC (RC2) to output 
    RC2 = 0; // initialize RC2 to 0 
    T2CON = 0x06; // 1:16 prescaler, Timer2 on  1:6 PostScale
    for(;;) // foreground routine
    {
    }
}
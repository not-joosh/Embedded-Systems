/*===========================================
AUTHOR: JOSH RATIFICAR, RODJEAN GERE
DATE: MARCH 11, 2024
===========================================*/
/*===========================================
HEADERS
===========================================*/

#include <xc.h> 

/*===========================================
CONFIGURATION SETTINGS
===========================================*/
#pragma config FOSC = XT 
#pragma config WDTE = OFF 
#pragma config PWRTE = ON 
#pragma config BOREN = ON 
#pragma config LVP = OFF 
#pragma config CPD = OFF 
#pragma config WRT = OFF 
#pragma config CP = OFF 
#define delay for(int i = 0; i < 10000; i++)
#define _XTAL_FREQ 4000000

/*===========================================
CONSTANTS
===========================================*/
unsigned int frequencies[3] = {10, 100, 1000};
unsigned int dutyCycles[5] = {10, 25, 50, 75, 95};
unsigned int frequencyIndex = 0; // 10 Hz initial state
unsigned int dutyCycleIndex = 0; // 10% initial state
unsigned int flag = 1;

unsigned int maxCountDC1[15] = {
    0xFB1D, 0xFF82, 0xFFF2, // [index 0-2 with respective frequency]
    0xF3CA, 0xFEC6, 0xFFDF, // [index 3-5 with respective frequency]
    0xE795, 0xFD8E, 0xFFC0, // [index 6-8 with respective frequency]
    0xDB60, 0xFC55, 0xFFA1, // [index 9-11 with respective frequency]
    0xD19C, 0xFB5B, 0xFF88  // [index 12-14 with respective frequency]
};
unsigned int maxCountIndex1 = 0; // 10% @ 10Hz, DC-TimerMaxCount

unsigned int maxCountDC2[] = {
    0xD40D, 0xFB9A, 0xFF8E, 
    0xDB60, 0xFC55, 0xFFA1, 
    0xE795, 0xFD8E, 0xFFC0, 
    0xF3CA, 0xFEC6, 0xFFDF, 
    0xFD8E, 0xFFC0, 0xFFF8
};

/*===========================================
FUNCTION PROTOTYPES
===========================================*/
void incrementDutyCycle();
void incrementFrequency();
void pseudocode();
void interrupt ISR(void);
void debounce();

/*===========================================

===========================================*/

void interrupt ISR(void)
{
    GIE = 0; // disable all unmasked interrupts (INTCON reg) 
    if(TMR1IF==1) // checks Timer1 interrupt flag 
    {
        TMR1IF = 0; // clears interrupt flag
        if(flag != 1)
        { // we understand that we are dealing with the rest of the cycle, not the duty cycle,
            TMR1 = maxCountDC2[maxCountIndex1]; 
        }
        else
        { // Duty  Cycle
            TMR1 = maxCountDC1[maxCountIndex1]; 
        }
        RA0 = RA0^1; // toggles the LED at RA0
        flag = !flag;
        // TMR1 = maxCountDC2[maxCountIndex2];
    }
    GIE = 1; // enable all unmasked interrupts (INTCON reg)
}

void debounce()
{
    while(RD0 == 1 || RD1 == 1)
    {
        if(RD0 == 1)
        {
            incrementDutyCycle();
            pseudocode();
            delay;
        }
        if(RD1 == 1)
        {
            incrementFrequency();
            pseudocode();
            delay;
        }
    }
}


void main() 
{  
    ADCON1 = 0x06; // set all pins in PORTA as digital I/O
    TRISA = 0x00; // sets all of PORTA to output
    T1CON = 0x30; // 1:8 prescaler, internal clock, Timer1 off
    TMR1IE = 1; // enable Timer1 overflow interrupt (PIE1 reg)
    TMR1IF = 0; // reset interrupt flag (PIR1 reg)
    PEIE = 1; // enable all peripheral interrupt (INTCON reg)
    GIE = 1; // enable all unmasked interrupts (INTCON reg)
    
    RA0 = 0; 
    TMR1 = maxCountDC1[maxCountIndex1]; 
    TMR1ON = 1; 

    // Configuring PortD as input
    TRISD = 0xFF; 
    for(;;) // foreground routine
    {
        debounce();
    }
}



void pseudocode()
{
    switch(dutyCycleIndex)
    {
        case 0: // 10% Duty Cycle
            switch(frequencyIndex)
            {
                case 0: // 10 Hz
                    maxCountIndex1 = 0;
                    break;
                case 1: // 100 Hz
                    maxCountIndex1 = 1;
                    break;
                case 2: // 1000 Hz
                    maxCountIndex1 = 2;
                    break;
                default:
                    return;
                    break;
            }
            break;
        case 1: // 25% Duty Cycle
            switch(frequencyIndex)
            {
                case 0: // 10 Hz
                    maxCountIndex1 = 3;
                    break;
                case 1: // 100 Hz
                    maxCountIndex1 = 4;
                    break;
                case 2: // 1000 Hz
                    maxCountIndex1 = 5;
                    break;
                default:
                    return;
                    break;
            }
            break;
        case 2: // 50% Duty Cycle
            switch(frequencyIndex)
            {
                case 0: // 10 Hz
                    maxCountIndex1 = 6;
                    break;
                case 1: // 100 Hz
                    maxCountIndex1 = 7;
                    break;
                case 2: // 1000 Hz
                    maxCountIndex1 = 8;
                    break;
                default:
                    return;
                    break;
            }
            break;
        case 3: // 75% Duty Cycle
            switch(frequencyIndex)
            {
                case 0: // 10 Hz
                    maxCountIndex1 = 9;
                    break;
                case 1: // 100 Hz
                    maxCountIndex1 = 10;
                    break;
                case 2: // 1000 Hz
                    maxCountIndex1 = 11;
                    break;
                default:
                    return;
                    break;
            }
            break;
        case 4: // 95% Duty Cycle
            switch(frequencyIndex)
            {
                case 0: // 10 Hz
                    maxCountIndex1 = 12;
                    break;
                case 1: // 100 Hz
                    maxCountIndex1 = 13;
                    break;
                case 2: // 1000 Hz
                    maxCountIndex1 = 14;
                    break;
                default:
                    return;
                    break;
            }
            break;
        default:
            return;
            break;
    }
}
void incrementDutyCycle()
{
    if(dutyCycleIndex == 4)
        dutyCycleIndex = 0;
    else
        dutyCycleIndex += 1;     
}

void incrementFrequency()
{
    if(frequencyIndex == 2)
        frequencyIndex = 0;
    else
        frequencyIndex += 1; 
}


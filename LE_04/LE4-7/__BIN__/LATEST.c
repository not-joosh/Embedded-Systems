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
CONSTANTS AND GLOBAL VARIABLES
===========================================*/
#define DUTY_INC_BTN RD0
#define FREQ_INC_BTN RD1
unsigned int flag = 1;
unsigned int frequencyIndex = 0;
unsigned int dutyCycleIndex = 0;

unsigned int PR2Values[3] = {
    0xCF, 0x7C, 0x3E
}; // 300 hZ, 500 hZ, 1000 hZ

// index 0 = 10% duty cycle
// index 1 = 25% duty cycle
// index 2 = 50% duty cycle
// index 3 = 75% duty cycle
// index 4 = 95% duty cycle
unsigned int timerMaxCount[3][5] = {
    {0x53, 0xD0, 0x1A1, 0x271, 0x318}, // 300 hZ
    {0x32, 0x7D, 0xFA, 0x177, 0x1DB}, // 500 hZ
    {0x19, 0x3F, 0x7D, 0xBC, 0xEE}    // 1000 hZ
};

/*===========================================
FUNCTION PROTOTYPES
===========================================*/
void incDutyCycle();
void incFrequency();


void main() 
{  
    /* following the steps in setting up PWM */
    PR2 = PR2Values[frequencyIndex]; // set value for PR2
    CCPR1L = timerMaxCount[frequencyIndex][dutyCycleIndex] & 0x003; // set value for (8 MSBs)
    CCP1CON = (timerMaxCount[frequencyIndex][dutyCycleIndex] & 0x3FC) >> 2; // set value for (2 LSBs), PWM mode
    T2CON = 0x06; // 1:16 prescaler, Timer2 on

    // Setting up Ports Configurations
    TRISC = 0x00; // sets all of PORTC (RC2) to output
    TRISD = 0xFF; // sets all of PORTD to input 
    RC2 = 0; // initialize RC2 to 0
    

    for(;;) // foreground routine
    {
        if(DUTY_INC_BTN == 1)
        {
            delay;
            incDutyCycle();
            CCPR1L = timerMaxCount[frequencyIndex][dutyCycleIndex] & 0x003;
            CCP1CON = (timerMaxCount[frequencyIndex][dutyCycleIndex] & 0x3FC) >> 2;
        }
        if(FREQ_INC_BTN == 1)
        {
            delay;
            incFrequency();
            PR2 = PR2Values[frequencyIndex];
            CCPR1L = timerMaxCount[frequencyIndex][dutyCycleIndex] & 0x003;
            CCP1CON = (timerMaxCount[frequencyIndex][dutyCycleIndex] & 0x3FC) >> 2;
        }
    }
}

void incDutyCycle()
{
    if(dutyCycleIndex < 4)
        dutyCycleIndex++;
    else
        dutyCycleIndex = 0;
}

void incFrequency()
{
    if(frequencyIndex < 2)
        frequencyIndex++;
    else
        frequencyIndex = 0;
}
 /*======================================================================================================
* FILE        : LE4-7.c
* AUTHOR      : Josh Ratificar,
*               Rodjean Gere
* DESCRIPTION : This program is a PWM generator that can be controlled by two buttons. 
*               The first button controls the duty cycle of the PWM signal, 
*               while the second button controls the frequency of the PWM signal.
*               This C program is written for the PIC16F877A microcontroller, which can be
*               compiled to a hex file and uploaded to the microcontroler.
* TOOLS       : MPLAB, XC8 Compiler, Microbrn, K150 Programmer, PIC16F877A, Visual Studio Code, and Proteus for simulation.
* COPYRIGHT   : 19 March, 2024
* REVISION HISTORY:
*   19 March, 2024: Initial Release of Completed Code. Start of actual documentation
======================================================================================================*/
/*=============================================== 
 *   HEADER FILES
 *==============================================*/
#include <xc.h> 

/*=============================================== 
 *   CONFIGURATION BITS
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
#define manual_delay for(int i = 0; i < 10000; i++)
#define DUTY_INC_BTN RD0
#define FREQ_INC_BTN RD1
unsigned int flag = 1;
unsigned int frequencyIndex = 0;
unsigned int dutyCycleIndex = 0;
unsigned int count_flag = 0;

// 300 hZ, 500 hZ, 1000 hZ
unsigned int PR2Values[3] = {
    0xCF, 0x7C, 0x3E
}; 

// index 0 = 10% duty cycle
// index 1 = 25% duty cycle
// index 2 = 50% duty cycle
// index 3 = 75% duty cycle
// index 4 = 95% duty cycle
unsigned int timerMaxCount[3][5] = {
    {0x53, 0xD0, 0x1A1, 0x271, 0x318}, // 300 hZ with different duty cycles
    {0x32, 0x7D, 0xFA, 0x177, 0x1DB},  // 500 hZ with different duty cycles
    {0x19, 0x3F, 0x7D, 0xBC, 0xEE}     // 1000 hZ with different duty cycles
};

/*=============================================== 
 *   FUNCTION PROTOTYPES
 *==============================================*/
void incDutyCycle();
void incFrequency();
void delay();
void displayMode();

/*===============================================
*   FUNCTION           : ISR
*   DESCRIPTION        : This function is the interrupt service routine for the program.
*                        Specifically, we are just using it for TIMER0. Timer0 is being
*                        used for debouncing the buttons.
*   PARAMETERS         : VOID
*   RETURNS            : VOID
*===============================================*/
void interrupt ISR() 
{
    GIE = 0; // disables all unmasked interrupts to prevent interrupt overlap
    if(TMR0IF)
    {
        TMR0IF = 0;     // clears the interrupt flag 
        count_flag = 1; // this is a global variable which will be in the main routine (toggle)
    }
    GIE = 1;      // Enable all unmasked interrupts
}

/*===============================================
*   FUNCTION           : MAIN
*   DESCRIPTION        : This function is the main routine for the program. It sets up the PWM
*                        and the buttons for the program. It also sets up the interrupt service
*                        routine for the program. The main routine also contains the foreground
*                        routine for the program.
*   PARAMETERS         : VOID
*   RETURNS            : VOID
*===============================================*/
void main() 
{  
    /* following the steps in setting up PWM */
    PR2 = PR2Values[frequencyIndex]; // set value for PR2
    CCPR1L = (timerMaxCount[frequencyIndex][dutyCycleIndex] & 0x3FC) >> 2; // set value for (8 MSBs)
    CCP1CON = ((timerMaxCount[frequencyIndex][dutyCycleIndex] & 0x003) << 4) + 0x0C; // set value for (2 LSBs), PWM mode
    T2CON = 0x06; // 1:16 prescaler, Timer2 on

    // Setting up Timer0 for debounce
    OPTION_REG = 0x44; 	// PS2:PS0 - prescaler 1:16
    // Configuring the Interrupt Service routine
    GIE = 1;    // Global Interrupt Enable
    PEIE = 1;   // Peripheral Interrupt Enable
    INTE = 1;   // External Interrupt Enable
    TMR0IE = 1; // Timer 0 Interrupt Enable		
    TMR0IF = 0; // Clear the Timer 0 Interrupt Flag

    // Setting up Ports Configurations
    TRISC = 0x00; // sets all of PORTC (RC2) to output
    TRISD = 0xFF; // sets all of PORTD to input 
    TRISB = 0x00; // sets all of PORTB to output
    RC2 = 0; // initialize RC2 to 0

    // displaying initial mode 
    displayMode();

    for(;;) // foreground routine
    {
        
        if(DUTY_INC_BTN == 1)
        {
            delay();
            incDutyCycle();
            PR2 = PR2Values[frequencyIndex]; // set value for PR2
            CCPR1L = (timerMaxCount[frequencyIndex][dutyCycleIndex] & 0x3FC) >> 2; // set value for (8 MSBs)
            CCP1CON = ((timerMaxCount[frequencyIndex][dutyCycleIndex] & 0x003) << 4) + 0x0C; // set value for (2 LSBs), PWM mode
            displayMode();
        }
        if(FREQ_INC_BTN == 1)
        {
            delay();
            incFrequency();
            PR2 = PR2Values[frequencyIndex];
            CCPR1L = timerMaxCount[frequencyIndex][dutyCycleIndex] & 0x003;
            CCP1CON = (timerMaxCount[frequencyIndex][dutyCycleIndex] & 0x3FC) >> 2;
            displayMode();
        }
    }
}

/*===============================================
*   FUNCTION           : displayMode
*   DESCRIPTION        : This function is used to display the current mode of the PWM signal
*                        on the LEDs. The LEDs are connected to PORTB. The first two LEDs
*                        are used to display the frequency of the PWM signal, while the last
*                        three LEDs are used to display the duty cycle of the PWM signal.
*   PARAMETERS         : VOID
*   RETURNS            : VOID
*===============================================*/
void displayMode()
{
    PORTB = 0x00;
    unsigned int temp = 0x00;
    unsigned int temp2 = 0x00;
    switch(frequencyIndex)
    {
        case 0:
            temp = 0x01;
            break;
        case 1:
            temp = 0x02;
            break;
        case 2:
            temp = 0x03;
            break;
    }
    switch(dutyCycleIndex)
    {
        case 0:
            temp2 = 0x01 << 2;
            break;
        case 1:
            temp2 = 0x02 << 2;
            break;
        case 2:
            temp2 = 0x03 << 2;
            break;
        case 3: 
            temp2 = 0x04 << 2;
            break; 
        case 4: 
            temp2 = 0x05 << 2;
            break;
    }
    PORTB = temp + temp2;
}

/*===============================================
*   FUNCTION           : delay
*   DESCRIPTION        : This function is used to create a delay of 0.8 seconds. This delay
*                        is used to debounce the buttons. The delay is created by counting
*                        the number of overflows of the timer. The timer is set to overflow
*                        every 0.01 seconds.
*   PARAMETERS         : VOID
*   RETURNS            : VOID
*===============================================*/
void delay() 
{
    // Calculate the number of overflows required for a 0.8 second interval
    // int overflowCount = (int)(timeIn /((4/_XTAL_FREQ) * 256 * 32)); // Outputs 98
    // We count up to the overflow, then leave this function afterwards
    int localClock = 0;
    while(localClock < 98)
    {
        if(count_flag == 1) 
        {
            count_flag = 0;
            localClock++;
        }
    }
}


/*===============================================
*   FUNCTION           : incDutyCycle
*   DESCRIPTION        : This function is used to increment the duty cycle of the PWM signal.
*   PARAMETERS         : VOID
*   RETURNS            : VOID
*===============================================*/
void incDutyCycle()
{
    if(dutyCycleIndex < 4)
        dutyCycleIndex++;
    else
        dutyCycleIndex = 0;
}

/*===============================================
*   FUNCTION           : incFrequency
*   DESCRIPTION        : This function is used to increment the frequency of the PWM signal.
*   PARAMETERS         : VOID
*   RETURNS            : VOID
*===============================================*/
void incFrequency()
{
    if(frequencyIndex < 2)
        frequencyIndex++;
    else
        frequencyIndex = 0;
}
 /*======================================================================================================
* FILE        : LE4-6.c
* AUTHOR      : Josh Ratificar,
*               Rodjean Gere
* DESCRIPTION : This program utilizes the Capture Module of the PIC16F877A microcontroller to measure the period of a PWM signal.
*               The period of the PWM signal coming in at RC2 is displayed on an LCD screen.
* TOOLS       : MPLAB, XC8 Compiler, Microbrn, K150 Programmer, PIC16F877A, Visual Studio Code, and Proteus for simulation.
* COPYRIGHT   : 19 March, 2024
* REVISION HISTORY:
*   19 March, 2024: Initial Release of Completed Code. Start of actual documentation
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
int period = 0; 
char periodStr[20];
unsigned int intrStall = 0;

/*=============================================== 
 *   FUNCTION PROTOTYPES
 *==============================================*/
void interrupt ISR(void);
void delay(void);
void initLCD(void);
void instCtrl(unsigned char cmd);
void dataCtrl(unsigned char dat);
void printStr(const unsigned char *stringIn);

/*===============================================
*   FUNCTION           : ISR
*   DESCRIPTION        : This function is the interrupt service routine for the program.
*                        It is used to calculate the period of the PWM signal coming in at RC2.
*   PARAMETERS         : VOID
*   RETURNS            : VOID
*===============================================*/
void interrupt ISR(void)
{
    GIE = 0; // disable all unmasked interrupts (INTCON reg) 
    if(CCP1IF==1) // checks CCP1 interrupt flag 
    {
        CCP1IF = 0; // cleaRB5 interrupt flag
        TMR1 = 0; // resets TMR1 
        period = (CCPR1/125) + 1; 
		if(intrStall == 10) // We are stalling because we want to be able to see 1s, CCP1 is being accessed too fast
		{
			sprintf(periodStr, "%u", period);
			intrStall = 0;	
		}
    }
    GIE = 1; // RB7able all unmasked interrupts (INTCON reg)
	intrStall += 1;
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
    TRISC = 0x04; // set RC2 to input
    T1CON = 0x30; // 1:8 prescaler, Timer1 off
    CCP1IE = 1; // RB7able TMR1/CCP1 match interrupt (PIE1 reg)
    CCP1IF = 0; // reset interrupt flag (PIR1 reg)
    PEIE = 1; // RB7able all peripheral interrupt (INTCON reg)
    GIE = 1; // RB7able all unmasked interrupts (INTCON reg)
    TMR1ON = 1; // Turns on Timer1 (T1CON reg)

    // CCP1CON = 0x05; // capture mode: every rising edge
    // CCP1CON = 0x06; // Every fourth  (every 4 clicks on the button, thRB7 we light up port b)
    CCP1CON = 0x04; // Every 4th (every 16 clicks on the button, 
    
    
    TRISB = 0x00; // set PORTB to output
    PORTB = 0x00; // clear PORTB
    TRISD = 0x00; // set PORTD to output
    initLCD(); // initialize LCD
    instCtrl(0x80); // set cuRB5or to fiRB5t line
    printStr("PERIOD: "); // print string
    for(;;) // foreground routine
    
    {
        instCtrl(0xC0); // set cursor to second line
        // going through the Period Array and printing the characters until null
        for(int i = 0; i < 20; i++)
        {
            if (periodStr[i] != '\0')
                dataCtrl(periodStr[i]);
        }
        printStr(" ms");
        delay(); // delay
    }   
}

/*===============================================
*   FUNCTION           : delay
*   DESCRIPTION        : This function is used to create a delay in the program
*   PARAMETERS         : VOID
*   RETURNS            : VOID
*===============================================*/
void delay(void)
{
    int i;
    for(i=0;i<1000;i++);
}


/*===============================================
*   FUNCTION           : initLCD
*   DESCRIPTION        : This function is used to initialize the LCD
*   PARAMETERS         : VOID
*   RETURNS            : VOID
*===============================================*/
void initLCD()
{
    instCtrl(0x38); // 8-bit mode, 2-line, 5x7 font
    instCtrl(0x08); // Display off
    instCtrl(0x01); // Clear display
    instCtrl(0x06); // IncremRB7t cuRB5or
    instCtrl(0x0C); // Display on, cuRB5or off
}


/*===============================================
*   FUNCTION           : instCtrl
*   DESCRIPTION        : This function is used to send instructions to the LCD
*   PARAMETERS         : unsigned char cmd
*   RETURNS            : VOID
*===============================================*/
void instCtrl(unsigned char cmd)
{
    RB5 = 0; // Instruction register
    RB6 = 0; // Write operation
    PORTD = cmd; // SRB7d command to LCD
    RB7 = 1; // RB7able H->L
    delay();
    RB7 = 0; // Disable H->L
}


/*===============================================
*   FUNCTION           : dataCtrl
*   DESCRIPTION        : This function is used to send data to the LCD
*   PARAMETERS         : unsigned char dat
*   RETURNS            : VOID
*===============================================*/
void dataCtrl(unsigned char dat)
{

    RB5 = 1; // Data register
    RB6 = 0; // Write operation
    PORTD = dat; // SRB7d data to LCD
    RB7 = 1; // RB7able H->L
    delay();
    RB7 = 0; // Disable H->L
}


/*===============================================
*   FUNCTION           : printStr
*   DESCRIPTION        : This function is used to print a string to the LCD
*   PARAMETERS         : const unsigned char *stringIn
*   RETURNS            : VOID
*===============================================*/
void printStr(const unsigned char *stringIn)
{
    while(*stringIn)
    {
        dataCtrl(*stringIn);
        stringIn++;
    }
}
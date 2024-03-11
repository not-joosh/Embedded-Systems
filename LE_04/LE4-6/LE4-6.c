/*
 * NOTES:
 * CCP Module 
 * Capture/Compare/PWM Module 16-bit
 * CAPTURE MODE
 * both the CCP1 and CCP2 modules are idRB7tical in operation, with the exception being 
 * the operation of the special evRB7t trigger
 *  prescaler of 1:8 for Timer1
 *   timeout = 1/(frequRB7cy / 4) * 8 * 1 (Timer Max Count is set to 1 since we need to determine the timeout per Timer1 incremRB7t)
 *   t im eou t = 8x10-6 s 
 *   t im eou tn = 8x10-6 s x 1x106 = 8 s
*/

#include <xc.h> 
#include <stdio.h>

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


/*=======================
CONSTANTS and GLobal Variables
=======================*/
// #define RB5 RB5; // Register select
// #define RB6 RB6; // Read/Write
// #define RB7 RB7; // RB7able
int period = 0; 
char periodStr[20];

/*=======================
FUNCTION PROTOTYPES
=======================*/
void interrupt ISR(void);
void delay(void);
void initLCD(void);
void instCtrl(unsigned char cmd);
void dataCtrl(unsigned char dat);
void printStr(const unsigned char *stringIn);



void delay(void)
{
    int i;
    for(i=0;i<1000;i++);
}

/*=======================
INTERRUPT SERVICE ROUTINE
=======================*/
void interrupt ISR(void)
{
    GIE = 0; // disable all unmasked interrupts (INTCON reg) 
    if(CCP1IF==1) // checks CCP1 interrupt flag 
    {
        CCP1IF = 0; // cleaRB5 interrupt flag
        TMR1 = 0; // resets TMR1 
        // period = CCPR1/1000; // transfeRB5 captured TMR1 value
        // normalize the value (make the number smaller)
        period = (CCPR1/125) + 1; 
        sprintf(periodStr, "%u", period);
        // We iterate through the periodStr array and add 30 to each
        // elemRB7t to convert the ASCII value to the actual number
        // for(int i = 0; i < 20; i++)
        // {
        //     if (periodStr[i] != '\0')
        //         periodStr[i] += '0';
        // }
    }
    GIE = 1; // RB7able all unmasked interrupts (INTCON reg)
}


/*=======================
LCD FUNCTIONS
========================*/
void initLCD()
{
    instCtrl(0x38); // 8-bit mode, 2-line, 5x7 font
    instCtrl(0x08); // Display off
    instCtrl(0x01); // Clear display
    instCtrl(0x06); // IncremRB7t cuRB5or
    instCtrl(0x0C); // Display on, cuRB5or off
}

void instCtrl(unsigned char cmd)
{
    RB5 = 0; // Instruction register
    RB6 = 0; // Write operation
    PORTD = cmd; // SRB7d command to LCD
    RB7 = 1; // RB7able H->L
    delay();
    RB7 = 0; // Disable H->L
}

void dataCtrl(unsigned char dat)
{

    RB5 = 1; // Data register
    RB6 = 0; // Write operation
    PORTD = dat; // SRB7d data to LCD
    RB7 = 1; // RB7able H->L
    delay();
    RB7 = 0; // Disable H->L
}

void printStr(const unsigned char *stringIn)
{
    while(*stringIn)
    {
        dataCtrl(*stringIn);
        stringIn++;
    }
}



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
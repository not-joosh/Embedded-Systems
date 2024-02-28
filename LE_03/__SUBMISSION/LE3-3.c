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

// Global Constants
int count = 0x00;
int countIsUpdating = 0;
int count_flag = 1;
enum Keys 
{
    KEY_0 = 0x0D,           // 0b0000 1101
    KEY_1 = 0x00,           // 0b0000 0000
    KEY_2 = 0x01,           // 0b0000 0001
    KEY_3 = 0x02,           // 0b0000 0010
    KEY_4 = 0x04,           // 0b0000 0100
    KEY_5 = 0x05,           // 0b0000 0101
    KEY_6 = 0x06,           // 0b0000 0110
    KEY_7 = 0x08,           // 0b0000 0111
    KEY_8 = 0x09,           // 0b0000 1000
    KEY_9 = 0x0A,           // 0b0000 1001
    KEY_MULTIPLY = 0x0C,    // 0b0000 1100
    KEY_HASH = 0x0E,        // 0b0000 1110
};

// Function prototypes
void delay(float timeIn);
void interrupt ISR();

void delay(float timeIn) 
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

void interrupt ISR() 
{
    GIE = 0; // disables all unmasked interrupts to prevent interrupt overlap
    if(INTF == 1)
    {
        switch(PORTD)
        {
            case KEY_0:
                count = 0;
                break;
            case KEY_1:
                count = 1;
                break;
            case KEY_2:
                count = 2;
                break;
            case KEY_3:
                count = 3;
                break;
            case KEY_4:
                count = 4;
                break;
            case KEY_5:
                count = 5;
                break;
            case KEY_6:
                count = 6;
                break;
            case KEY_7:
                count = 7;
                break;
            case KEY_8:
                count = 8;
                break;
            case KEY_9:
                count = 9;
                break;
            case KEY_MULTIPLY:
                count = 0;
                break;
            case KEY_HASH:
                count = 0;
                break;
            default: 
                break;
        }
        countIsUpdating = 1;
        INTF = 0;     // Clear the interrupt flag
    }
    else if(TMR0IF)
    {
        TMR0IF = 0;     // clears the interrupt flag 
        count_flag = 1; // this is a global variable which will be in the main routine (toggle)
    }
    GIE = 1;      // Enable all unmasked interrupts
}

void main() 
{  
    OPTION_REG = 0x44; 	// PS2:PS0 - prescaler 1:16
    // Configuring the Interrupt Service routine
    GIE = 1;    // Global Interrupt Enable
    PEIE = 1;   // Peripheral Interrupt Enable
    INTE = 1;   // External Interrupt Enable
    RBIE = 0;   // Port B Interrupt Enable
    TMR0IE = 1; // Timer 0 Interrupt Enable		
    TMR0IF = 0; // Clear the Timer 0 Interrupt Flag
    INTF = 0;   // Clear the External Interrupt Flag
    RBIF = 0;   // Clear the Port B Interrupt Flag

    // Configuring ports
    TRISB = 0x01; // Interrupt DAVBL pin from Keypad 
    TRISC = 0x00; // 7 Segment Decoder -> 7 Segment Display
    TRISD = 0xFF; // Keypad Inputs to read from

    // Setting the initial values of the ports
    PORTC = 0x00; // 7 Segment Decoder

    while (1) 
    {    
        for(int i = 0; i <= 9; i++)
        {
            if(countIsUpdating) 
            {
                countIsUpdating = 0;
                // int count_flag = 1;
                PORTC = count;
                i = count;
            } 
            else 
            {
                PORTC = i;
            }
            delay(0.8);
        }
    }
}
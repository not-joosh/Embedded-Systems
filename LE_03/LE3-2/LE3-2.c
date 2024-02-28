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
void delay(int timeIn);
void interrupt ISR();

void delay(int timeIn) 
{
    __delay_ms(195);
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
        PORTC = count;
        INTF = 0;     // Clear the interrupt flag
        GIE = 1;      // Enable all unmasked interrupts
    }
}

void main() 
{  
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
    }
}
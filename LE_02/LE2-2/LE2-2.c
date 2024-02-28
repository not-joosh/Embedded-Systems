#include <xc.h> 
#define _XTAL_FREQ 4000000

// Configuration settings
#pragma config FOSC = XT 
#pragma config WDTE = OFF 
#pragma config PWRTE = ON 
#pragma config BOREN = ON 
#pragma config LVP = OFF 
#pragma config CPD = OFF 
#pragma config WRT = OFF 
#pragma config CP = OFF 

// Key constants
enum Keys 
{
    KEY_0 = 0x1D,           // 0b0000 1101
    KEY_1 = 0x10,           // 0b0000 0000
    KEY_2 = 0x11,           // 0b0000 0001
    KEY_3 = 0x12,           // 0b0000 0010
    KEY_4 = 0x14,           // 0b0000 0100
    KEY_5 = 0x15,           // 0b0000 0101
    KEY_6 = 0x16,           // 0b0000 0110
    KEY_7 = 0x18,           // 0b0000 0111
    KEY_8 = 0x19,           // 0b0000 100
    KEY_9 = 0x1A,           // 0b0000 1001
    KEY_MULTIPLY = 0x1C,    // 0b0000 1100
    KEY_HASH = 0x1E,        // 0b0000 1110
};

// Function prototypes
void delay(int timeIn);
void readKey();
// 
void delay(int timeIn)
{
    for (int j = 0; j < timeIn; j++);
}

void readKey() 
{
    int bits = PORTD;
    switch (bits) 
    {
        case KEY_0:
            PORTB = 0x00;
            break;
        case KEY_1:
            PORTB = 0x01;
            break;
        case KEY_2:
            PORTB = 0x02;
            break;
        case KEY_3:
            PORTB = 0x03;
            break;
        case KEY_4:
            PORTB = 0x04;
            break;
        case KEY_5:
            PORTB = 0x05;
            break;
        case KEY_6:
            PORTB = 0x06;
            break;
        case KEY_7:
            PORTB = 0x07;
            break;
        case KEY_8:
            PORTB = 0x08;
            break;
        case KEY_9:
            PORTB = 0x09;
            break;
        case KEY_MULTIPLY:
            PORTB = 0x0F;
            break;
        case KEY_HASH:
            PORTB = 0x0F;
            break;
        default:
            break;
    }
    delay(100);
}

void main() 
{  
    TRISB = 0x00;
    TRISC = 0x00;
    TRISD = 0xFF;
    PORTB = 0x00;
    while (1) 
    {    
        if (RD4 == 1) // Data is Available to Read
        {
            readKey();
        }
    }
}
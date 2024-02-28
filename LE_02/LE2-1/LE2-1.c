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

// Function prototypes
void delay(unsigned int timeIn);
void instCtrl(unsigned char dataIn);
void dataCtrl(unsigned char dataIn);
void initLCD(); //

void delay(unsigned int timeIn) 
{
    for (unsigned int j = 0; j < timeIn; j++);
}

void instCtrl(unsigned char dataIn) 
{
    // Load Data Pins at PORTB    
    PORTB = dataIn;
    delay(100);
    // SELECT instruction register
    PORTC = 0x04;
    delay(100);
    // Enable High
    PORTC = 0x00;
    delay(100);
    // Set enable back to low, but keep the selected register
    PORTC = 0x00;
}

void dataCtrl(unsigned char dataIn) 
{
    // Load Data Pins at PORTB
    PORTB = dataIn;
    delay(100);
    // SELECT instruction register
    PORTC = 0x06;
    delay(100);
    // Enable High
    PORTC = 0x02;
    delay(100);
    // Set enable back to low, but keep the selected register
    PORTC = 0x00;
}

void initLCD() 
{
    delay(100);    // LCD startup about 15ms
    instCtrl(0x38); // function set: 8-bit; dual-line
    instCtrl(0x08); // display off
    instCtrl(0x01); // display clear
    instCtrl(0x06); // entry mode: increment; shift off
    instCtrl(0x0C); // display on; cursor on; blink off
}

void main() 
{  
    TRISB = 0x00;
    TRISC = 0x00;
    initLCD(); 
    while (1) 
    {    
        instCtrl(0x81); // move cursor to 2nd line 7th column 
        dataCtrl('H'); // prints 'H' at current cursor position 
        // then shifts the cursor to the right* 
        dataCtrl('E'); // prints 'E' 
        dataCtrl('L'); // prints 'L' 
        dataCtrl('L'); // prints 'L' 
        dataCtrl('O'); // prints 'O' 
        dataCtrl('!'); // prints '!' 
    }
}
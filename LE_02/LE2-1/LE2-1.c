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

// Function prototypes
void delay(int timeIn);
void instCtrl(int dataIn);
void dataCtrl(int dataIn);
void initLCD();

void delay(int timeIn) 
{
    for (int j = 0; j < timeIn; j++);
}

void instCtrl(int dataIn) 
{
    // Load Data Pins at PORTB    
    PORTB = dataIn;
    delay(1000);
    // SELECT instruction register
    PORTC = 0x04;
    delay(1000);
    // Enable High
    PORTC = 0x00;
    delay(1000);
    // Set enable back to low, but keep the selected register
    PORTC = 0x00;
}

void dataCtrl(int dataIn) 
{
    // Load Data Pins at PORTB
    PORTB = dataIn;
    delay(1000);
    // SELECT instruction register
    PORTC = 0x06;
    delay(1000);
    // Enable High
    PORTC = 0x02;
    delay(1000);
    // Set enable back to low, but keep the selected register
    PORTC = 0x00;
}

void initLCD() 
{
    delay(1000);    // LCD startup about 15ms
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
        instCtrl(0xC6); // move cursor to 2nd line 7th column 
        dataCtrl('H'); // prints 'H' at current cursor position 
        // then shifts the cursor to the right* 
        dataCtrl('E'); // prints 'E' 
        dataCtrl('L'); // prints 'L' 
        dataCtrl('L'); // prints 'L' 
        dataCtrl('O'); // prints 'O' 
        dataCtrl('!'); // prints '!' 
    }
}
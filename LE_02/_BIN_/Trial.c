#include <xc.h> 

#define _XTAL_FREQ 4000000

#pragma config FOSC = XT 
#pragma config WDTE = OFF 
#pragma config PWRTE = ON 
#pragma config BOREN = ON 
#pragma config LVP = OFF 
#pragma config CPD = OFF 
#pragma config WRT = OFF 
#pragma config CP = OFF 

void delay(int timeIn) {
    for(int j = 0; j < timeIn; j++);
}

// POrt B D Data pins
// Port C for control pins
// RS 01d
// E 02d
// for instruction control for LCD
void instCtrl(int instruction_in) {
    // Load Data Pins at PORTB    
    PORTB = instruction_in;
    delay(2000);

    // SELECT instructino register
    PORTC = 0b00000100;
    delay(2000);

    // Enable High
    PORTC = 0x00;
    delay(2000);

    // Set enable back to low, but keep the selected register
    PORTC = 0x00;
}

void dataCtrl(char data_inst_in) {
    // Load Data Pins at PORTB
    PORTB = data_inst_in;
    delay(2000);

    // SELECT instructino register
    PORTC = 0b00000110;
    delay(2000);

    // Enable High
    PORTC = 0b00000010;
    delay(2000);

    // Set enable back to low, but keep the selected register
    PORTC = 0x00;
}

void initLCD()
{
    delay(1000); // LCD startup about 15ms
    instCtrl(0x38); // function set: 8-bit; dual-line
    instCtrl(0x08); // display off
    instCtrl(0x01); // display clear
    instCtrl(0x06); // entry mode: increment; shift off
    instCtrl(0x0C); // display on; cursor on; blink off
}

int charToBinaryInt(char c) {
    return (int) c;
}
void main()
{
    initLCD(); // initialize LCD
    PORTB = 0x00;
    PORTC = 0x00;
    while (1) // endless loop
    {
        dataCtrl(charToBinaryInt('H')); 
        dataCtrl(charToBinaryInt('E')); 
        dataCtrl(charToBinaryInt('L')); 
        dataCtrl(charToBinaryInt('L')); 
        dataCtrl(charToBinaryInt('O'));
    }
}


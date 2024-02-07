#include <xc.h> 
#pragma config FOSC = XT 
#pragma config WDTE = OFF 
#pragma config PWRTE = ON 
#pragma config BOREN = ON 
#pragma config LVP = OFF 
#pragma config CPD = OFF 
#pragma config WRT = OFF 
#pragma config CP = OFF 

// KEY0            0001 1101B
// KEY1            0001 1000B
// KEY2            0001 1001B 
// KEY3            0001 1010B  
// KEY4            0001 0100B
// KEY5            0001 010
// KEY6            0001 0110B1B
// KEY7            0001 0000B
// KEY8            0001 0001B
// KEY9            0001 0010B
// KEYPLUS         0001 1111B
// KEYMINUS        0001 1011B
// KEYMULTIPLY     0001 0111B
// KEYDIVIDE       0001 0011B
// KEYEQUALS       0001 1110B

#define KEY0 0x1D
#define KEY1 0x18
#define KEY2 0x19
#define KEY3 0x1A
#define KEY4 0x14
#define KEY5 0x15
#define KEY6 0x16
#define KEY7 0x10
#define KEY8 0x11
#define KEY9 0x12
#define KEYPLUS 0x1F
#define KEYMINUS 0x1B
#define KEYMULTIPLY 0x17
#define KEYDIVIDE 0x13
#define KEYEQUALS 0x1E

void delay(int timeIn) {
    for(int j = 0; j < timeIn; j++);
}

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
    delay(2000); // LCD startup about 15ms
    instCtrl(0x38); // function set: 8-bit; dual-line
    instCtrl(0x08); // display off
    instCtrl(0x01); // display clear
    instCtrl(0x06); // entry mode: increment; shift off
    instCtrl(0x0C); // display on; cursor on; blink off
}

void readKey(int *rowCountIN, int *currentRow) 
{
    // int key = PORTD;
    // set key to the value of PORTD
    int bits = PORTD;
    switch(bits) {
        case KEY0:
            dataCtrl('0');
            break;
        case KEY1:
            dataCtrl('1');
            break;
        case KEY2:
            dataCtrl('2');
            break;
        case KEY3:
            dataCtrl('3');
            break;
        case KEY4:
            dataCtrl('4');
            break;
        case KEY5:
            dataCtrl('5');
            break;
        case KEY6:
            dataCtrl('6');
            break;
        case KEY7:
            dataCtrl('7');
            break;
        case KEY8:
            dataCtrl('8');
            break;
        case KEY9:
            dataCtrl('9');
            break;
        case KEYPLUS:
            dataCtrl('+');
            break;
        case KEYMINUS:
            dataCtrl('-');
            break;
        case KEYMULTIPLY:
            dataCtrl('*');
            break;
        case KEYDIVIDE:
            dataCtrl('/');
            break;
        case KEYEQUALS:
            dataCtrl('=');
            break;
        default:
            break;
    }
    *rowCountIN += 1; // Increments the amount of characters on the row. if it is 20, then we will move to the next line
    if(*rowCountIN == 20) {
        instCtrl(0xC0); // Move to the next line
    } else if(*rowCountIN == 40) {
        instCtrl(0x94); // Move to the next line
    } else if(*rowCountIN == 60) {
        instCtrl(0xD4); // Move to the next line
    } if (*rowCountIN > 80) {
        instCtrl(0x01); // Clear LCD screen
        *rowCountIN = 0; // Reset row count to 0
    }
}

void main()
{   // 20 x 4 LCD
    // 081H -> 093H ROW 1
    // 0C0h -> 0D3H ROW 2
    // 094h -> 0A7H ROW 3
    // 0D4h -> 0E7H ROW 4
    int rowCountIN = 0;
    int currentRow = 1;
    OPTION_REG = 0xC0;
    TRISB = 0x00;
    TRISC = 0x00;
    PORTB = 0x00;
    PORTC = 0x00;

    // Keypad
    TRISD = 0xFF;
    PORTD = 0xFF;
    initLCD(); // initialize LCD
    while (1) // endless loop
    {    
        if(RD4 == 1) // then a key has been pressed, so lets read a key
        {
            readKey(&rowCountIN, &currentRow);
        }
    }
}
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

// Key constants
enum Keys 
{
    KEY_0 = 0x1D,
    KEY_1 = 0x18,
    KEY_2 = 0x19,
    KEY_3 = 0x1A,
    KEY_4 = 0x14,
    KEY_5 = 0x15,
    KEY_6 = 0x16,
    KEY_7 = 0x10,
    KEY_8 = 0x11,
    KEY_9 = 0x12,
    KEY_PLUS = 0x1F,
    KEY_MINUS = 0x1B,
    KEY_MULTIPLY = 0x17,
    KEY_DIVIDE = 0x13,
    KEY_EQUALS = 0x1E
};

// Function prototypes
void delay(int timeIn);
void instCtrl(int dataIn);
void dataCtrl(int dataIn);
void initLCD();
int readKey(int *charCount);

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

int readKey(int *charCount) 
{
    int isValidKey = 1;
    int bits = PORTD;
    switch (bits) 
    {
        case KEY_0:
            dataCtrl('0');
            break;
        case KEY_1:
            dataCtrl('1');
            break;
        case KEY_2:
            dataCtrl('2');
            break;
        case KEY_3:
            dataCtrl('3');
            break;
        case KEY_4:
            dataCtrl('4');
            break;
        case KEY_5:
            dataCtrl('5');
            break;
        case KEY_6:
            dataCtrl('6');
            break;
        case KEY_7:
            dataCtrl('7');
            break;
        case KEY_8:
            dataCtrl('8');
            break;
        case KEY_9:
            dataCtrl('9');
            break;
        case KEY_PLUS:
            dataCtrl('+');
            break;
        case KEY_MINUS:
            dataCtrl('-');
            break;
        case KEY_MULTIPLY:
            dataCtrl('*');
            break;
        case KEY_DIVIDE:
            dataCtrl('/');
            break;
        case KEY_EQUALS:
            dataCtrl('=');
            break;
        default:
            isValidKey = 0; // Not a valid Letter
            break;
    }
    return isValidKey;
}

void main() 
{  
    int charCount = 0;
    TRISB = 0x00;
    TRISC = 0x00;
    TRISD = 0xFF;

    initLCD(); 
    while (1) 
    {    
        if (RD4 == 1) // Data is Available to Read
        {
            int isValidKey = readKey(&charCount);
            if (isValidKey) 
            {
                charCount += 1; // Increment the amount of characters on the row. If it is 20, move to the next line
                if (charCount % 20 == 0) 
                {
                    if (charCount == 20)
                        instCtrl(0xC0); // Move to the next line
                    else if (charCount == 40)
                        instCtrl(0x94); // Move to the next line
                    else if (charCount == 60)
                        instCtrl(0xD4); // Move to the next line
                }
                if (charCount > 80) 
                {
                    instCtrl(0x01); // Clear LCD screen
                    charCount = 0; // Reset row count to 0
                }
            }
        }
    }
}
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

#define RW PORTCbits.RC0
#define RS PORTCbits.RC1
#define EN PORTCbits.RC2


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
    KEY_8 = 0x19,           // 0b0000 1000
    KEY_9 = 0x1A,           // 0b0000 1001
    KEY_MULTIPLY = 0x1C,    // 0b0000 1100
    KEY_HASH = 0x1E,        // 0b0000 1110
};

// Function Prototypes
void instCtrl(unsigned char dataIn);
void dataCtrl(unsigned char dataIn);


void delay(int timeIn) 
{
    for (int j = 0; j < timeIn; j++);
}

void instCtrl(unsigned char dataIn) 
{
    PORTB = dataIn;
    RW = 0;
    RS = 0;
    EN = 1;
    __delay_ms(100);
    EN = 0;
}

void dataCtrl(unsigned char dataIn) 
{
    PORTB = dataIn;
    RW = 0;
    RS = 1;
    EN = 1;
    __delay_ms(100);
    EN = 0;
}

void initLCD() 
{
    delay(100);     // LCD startup about 15ms
    instCtrl(0x38); // function set: 8-bit; dual-line
    instCtrl(0x08); // display off
    instCtrl(0x01); // display clear
    instCtrl(0x06); // entry mode: increment; shift off
    instCtrl(0x0C); // display on; cursor on; blink off
}

void printStr(const unsigned char *str, unsigned char num)
{
    unsigned char i;
    for(i = 0; i < num; i++)
    {
        dataCtrl(str[i]);
    }
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
        case KEY_HASH:
            dataCtrl('#');
            break;
        case KEY_MULTIPLY:
            dataCtrl('*');
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



// #include <xc.h> 

// // Configuration settings
// #define _XTAL_FREQ 4M
// #pragma config FOSC = XT 
// #pragma config WDTE = OFF 
// #pragma config PWRTE = ON 
// #pragma config BOREN = ON 
// #pragma config LVP = OFF 
// #pragma config CPD = OFF 
// #pragma config WRT = OFF 
// #pragma config CP = OFF 


// // Key constants
// enum Keys 
// {
//     KEY_0 = 0x1D,           // 0b0000 1101
//     KEY_1 = 0x10,           // 0b0000 0000
//     KEY_2 = 0x11,           // 0b0000 0001
//     KEY_3 = 0x12,           // 0b0000 0010
//     KEY_4 = 0x14,           // 0b0000 0100
//     KEY_5 = 0x15,           // 0b0000 0101
//     KEY_6 = 0x16,           // 0b0000 0110
//     KEY_7 = 0x18,           // 0b0000 0111
//     KEY_8 = 0x19,           // 0b0000 1000
//     KEY_9 = 0x1A,           // 0b0000 1001
//     KEY_MULTIPLY = 0x1C,    // 0b0000 1100
//     KEY_HASH = 0x1E,        // 0b0000 1110
// };


// // Function prototypes
// void delay(int timeIn);
// void instCtrl(int dataIn);
// void dataCtrl(int dataIn);
// void initLCD();
// int readKey(int *charCount);

// void delay(int timeIn) 
// {
//     for (int j = 0; j < timeIn; j++);
// }

// void instCtrl(int dataIn) 
// {
//     // Load Data Pins at PORTB    
//     PORTB = dataIn;
//     delay(100);
//     // SELECT instruction register
//     PORTC = 0x04;
//     delay(100);
//     // Enable High
//     PORTC = 0x00;
//     delay(100);
//     // Set enable back to low, but keep the selected register
//     PORTC = 0x00;
// }

// void dataCtrl(int dataIn) 
// {
//     // Load Data Pins at PORTB
//     PORTB = dataIn;
//     delay(100);
//     // SELECT instruction register
//     PORTC = 0x06;
//     delay(100);
//     // Enable High
//     PORTC = 0x02;
//     delay(100);
//     // Set enable back to low, but keep the selected register
//     PORTC = 0x00;
// }

// void initLCD() 
// {
//     delay(100);    // LCD startup about 15ms
//     instCtrl(0x38); // function set: 8-bit; dual-line
//     instCtrl(0x08); // display off
//     instCtrl(0x01); // display clear
//     instCtrl(0x06); // entry mode: increment; shift off
//     instCtrl(0x0C); // display on; cursor on; blink off
// }

// int readKey(int *charCount) 
// {
//     int isValidKey = 1;
//     int bits = PORTD;
//     switch (bits) 
//     {
//         case KEY_0:
//             dataCtrl('0');
//             break;
//         case KEY_1:
//             dataCtrl('1');
//             break;
//         case KEY_2:
//             dataCtrl('2');
//             break;
//         case KEY_3:
//             dataCtrl('3');
//             break;
//         case KEY_4:
//             dataCtrl('4');
//             break;
//         case KEY_5:
//             dataCtrl('5');
//             break;
//         case KEY_6:
//             dataCtrl('6');
//             break;
//         case KEY_7:
//             dataCtrl('7');
//             break;
//         case KEY_8:
//             dataCtrl('8');
//             break;
//         case KEY_9:
//             dataCtrl('9');
//             break;
//         case KEY_HASH:
//             dataCtrl('#');
//             break;
//         case KEY_MULTIPLY:
//             dataCtrl('*');
//             break;
//         default:
//             isValidKey = 0; // Not a valid Letter
//             break;
//     }
//     return isValidKey;
// }

// void main() 
// {  
//     int charCount = 0;
//     TRISB = 0x00;
//     TRISC = 0x00;
//     TRISD = 0xFF;

//     initLCD(); 
//     while (1) 
//     {    
//         if (RD4 == 1) // Data is Available to Read
//         {
//             int isValidKey = readKey(&charCount);
//             if (isValidKey) 
//             {
//                 charCount += 1; // Increment the amount of characters on the row. If it is 20, move to the next line
//                 if (charCount % 20 == 0) 
//                 {
//                     if (charCount == 20)
//                         instCtrl(0xC0); // Move to the next line
//                     else if (charCount == 40)
//                         instCtrl(0x94); // Move to the next line
//                     else if (charCount == 60)
//                         instCtrl(0xD4); // Move to the next line
//                 }
//                 if (charCount > 80) 
//                 {
//                     instCtrl(0x01); // Clear LCD screen
//                     charCount = 0; // Reset row count to 0
//                 }
//             }
//         }
//     }
// }
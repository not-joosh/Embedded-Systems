#include <xc.h> 

const char keyMap[] = {
    '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
    '+', '-', '*', '/', '='
};

const int keyCodes[] = {
    0x1D, 0x18, 0x19, 0x1A, 0x14, 0x15, 0x16, 0x10, 0x11, 0x12, 
    0x1F, 0x1B, 0x17, 0x13, 0x1E
};

void delay(int timeIn) 
{
    for(int j = 0; j < timeIn; j++);
}

void instCtrl(int instruction_in) 
{
    PORTB = instruction_in;
    delay(0x2000);
    PORTC = 0x04;
    delay(0x2000);
    PORTC = 0x00;
    delay(0x2000);
    PORTC = 0x00;
}

void dataCtrl(char data_inst_in) 
{
    PORTB = data_inst_in;
    delay(0x2000);
    PORTC = 0x06;
    delay(0x2000);
    PORTC = 0x02;
    delay(0x2000);
    PORTC = 0x00;
}

void initLCD() 
{
    delay(0x2000);
    instCtrl(0x38); // function set: 8-bit; dual-line
    instCtrl(0x08); // display off
    instCtrl(0x01); // display clear
    instCtrl(0x06); // entry mode: increment; shift off
    instCtrl(0x0C); // display on; cursor on; blink off
}

void readKey(int *rowCount) 
{
    int bits = PORTD;
    for (int i = 0; i < sizeof(keyCodes) / sizeof(keyCodes[0]); i++) 
    {
        if (bits == keyCodes[i]) 
        {
            dataCtrl(keyMap[i]);
            break;
        }
    }
    *rowCount = (*rowCount + 1) % 80;
    if (*rowCount % 20 == 0)  
    {
        instCtrl((0xC0 + (*rowCount / 20 - 1) * 0x34)); // Move to the next line
        // When rowCount is between 1 and 20 (first line), no adjustment is needed. 
        // When rowCount is between 21 and 40 (second line), the offset is 0x34, moving to the third line. 
        // When rowCount is between 41 and 60 (third line), the offset is 0x68, moving to the fourth line. 
        // When rowCount is between 61 and 80 (fourth line), the offset is 0x9C, moving back to the first line.
    }
    if (*rowCount == 0)  
    {
        instCtrl(0x01); 
        // Clear LCD screen
    }
}

void main() 
{
    int rowCount = 0;
    OPTION_REG = 0xC0;
    TRISB = 0x00;
    TRISC = 0x00;
    PORTB = 0x00;
    PORTC = 0x00;

    TRISD = 0xFF;
    PORTD = 0xFF;
    initLCD();
    while (1) 
    {
        if (RD4 == 1) 
        {
            readKey(&rowCount);
        }
    }
}

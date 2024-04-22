#include <xc.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

unsigned char receivedData = 0x00;
unsigned char count_flag = 0;

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF
#define _XTAL_FREQ 4000000
#define delay for(int i = 0; i < 10000; i++)

// Function Protocols
void handShake(void);

void main(void)
{
    // COnfiguration of Ports
    
    // Configuration of USART
    SPBRG = 0x19;
    SYNC = 0;
    SPEN = 1;
    BRGH = 1;
    CREN = 1;
    RX9 = 0;
    //RCIE = 1; 
    TRISB = 0x00;
    PORTB = 0x00;
    TRISD = 0x00;
    PORTD = 0x00;

    for(;;)
    {  
        //PORTB = 0b01010101;
       	handShake();
    }
}

    // Read
void handShake() 
{//what was received
    while(!RCIF); // WAIT until the data receive is complete
    receivedData = RCREG;
    if(receivedData == 0xFF)
        PORTB = 0x00;
    else
        PORTB = receivedData;
    return;
}   

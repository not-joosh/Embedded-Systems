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

void main() {
    ADCON1 = 0x07;
    TRISB = 0x00;

    for(;;) 
    {
        if(RA0 == 1) {
	        for(int i = 0; i < 3; i++) 
	        {
	            RB0 = 1;
	            delay(10000);
	            RB0 = 0;
	            delay(10000);
	        }
        } 
        else 
            RB0 = 0;
    }
}
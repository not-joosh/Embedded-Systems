#include <stdio.h>

void displayBits(unsigned int input) {
    int i;
    for (i = 9; i >= 0; i--) {
        printf("%d", (input >> i) & 1);
    }
    printf("\n");
}

unsigned int array[3][5] = {
    {0x14, 0x34, 0x68, 0x9C, 0xC5}, // 300 hZ
    {0x0C, 0x1F, 0x3E, 0x5D, 0x76}, // 500 hZ
    {0x06, 0x0F, 0x1F, 0x2E, 0x3B}  // 1000 hZ
};

int main(void)
{
    int i;
    //storing the 2 lsb into a variable called "CCP1CONLOW"
    unsigned int CCP1CONLOW = array[0][4] & 0x003;
    displayBits(CCP1CONLOW);
    CCP1CONLOW = ((array[0][4] & 0x003) << 4) + 0x0C;
    displayBits(CCP1CONLOW);
    displayBits(0x0C);
    displayBits(CCP1CONLOW + 0x0C);
    // Storing the 8 msb into a variable called "CCPR1LHIGH"
    unsigned int CCPR1LHIGH = (array[0][4] & 0x3FC) >> 2; // 0x3FC = 11 1111 1100 >> 2 
    // displayBits(array[0][4]);
    // displayBits(CCP1CONLOW);
    // displayBits(CCPR1LHIGH);
    return 0;
}
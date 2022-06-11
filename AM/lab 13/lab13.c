#include<lpc21xx.h>		      //Header file for LPC214x Series microcontrollers
void delay()
{
	int i;
	{
	for(i=0x00;i<=0x12750;i++);
	}
}
           

int main(void)
{ 
	int j;                         //Variable declared as integer
	unsigned int a[]={0x92,0xc6,0x86,0xf8,0xff,0x86,0xc6}; // array for brightness 25, 50, 75, 100
	PINSEL0 = 0x00000000;
	PINSEL1 = 0x00000000;
	PINSEL2 = 0x00000000;
    IO0DIR |= 0xff<<0;              //Sets direction as output for PORT 0 pins		  p0.0 to p0.7 
    while(1)
    {
        for(j=0;j<=7;j++)
        {
            IO0SET |= a[j];           //sets corresponding pins HIGH
            delay();                  //Calls delay function
            IO0CLR|=a[j];           //Sets corresponding pins LOW
        }
    }
    return 0;
}

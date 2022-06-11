#include<lpc214x.h>

int main(void)
{
	PINSEL0 = 0x00000000;
	PINSEL1	= 0x00000000;
	PINSEL2 = 0x00000000;					
	IODIR1 |= 1<<17;			// p1.17 as output			   
	IODIR1 &= ~(1<<16);         // Configuring P1.16 as input
while(1)
	{
	if (IOPIN1 & (1<<16))      //evaluates  to true for 'LOW' on p1.16
	  {
	  	IOSET1 |= (1<<17);		//drive p1.17 high, turn led off
	   } else{
		IOCLR1 |= (1<<17);		//drive p1.17 low, turn led on
	   }
	}
	return 0;
}
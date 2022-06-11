#include<lpc21xx.h>
void delay()
{
	int i;
	{
	for(i=0x00;i<=0x1275;i++);
	}
}
int main(void)
{
	unsigned char z;
	PINSEL0 = 0x00000000;
	PINSEL1	= 0x00000000;
	PINSEL2 = 0x00000000;					
	IODIR0 |= (0x0F<<16);		
while(1)
	{
	   for(z=0x0f;z>=0;z--)
	   {
	   	IOSET1 |= (z<<16);
		delay();
		IOCLR1 |= (z<<16);
		delay();
	   }
	}
return 0;
}

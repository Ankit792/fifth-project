#include<lpc21xx.h>
void delay()
{
	int i;
	{
	for(i=0x00;i<=0x127500;i++);
	}
}
int main(void)
{
	unsigned char z;
	PINSEL0 = 0x00000000;
	PINSEL1	= 0x00000000;
	PINSEL2 = 0x00000000;					
	IODIR1 |= (0x0f<<16);		
while(1)
	{
	   for (z=0;z<=0x0f;z++)
	   {
	   	IOSET1 |= (z<<16);
		delay();
		IOCLR1 |= (z<<16);
	   }
	}
//return 0;
}

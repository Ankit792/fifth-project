#include<lpc21xx.h>

void delay()
{
	int i;
	{
	for(i=0x00;i<=0x12750;i++);
	}
}

int main(void)
{
	unsigned char z;
	PINSEL0 = 0x00000000;
	PINSEL1	= 0x00000000;
	PINSEL2 = 0x00000000;					
	IODIR1 |= (0x0f<<16);		   
	IODIR0 &= ~(1<<17);         // Configuring P1.17 as input
while(1)
	{
	if (IOPIN0 == (1==17))     // 1 then down counter      
	  {
	  	for(z=0;z<=0x0f;z++)
	   {
	   	IOSET1 |= (z<<16);
		delay();
		IOCLR1 |= (z<<16);
	   }
	   } else{	
		for (z=0x0f;z>=0;z--)
	   	{
	   	IOSET1 |= (z<<16);
		delay();
		IOCLR1 |= (z<<16);
	    }
	   }
	}
	return 0;
}

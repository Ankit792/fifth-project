#include<lpc214x.h>
void delay()
{
	int i;
	{
		for(i=0x00;i<=0x1275;i++)		 
			continue;
	}
}

int main(void)
{
	PINSEL0 = 0x00000000;
	PINSEL1	= 0x00000000;					
	IODIR1 = 0X000f0000;				   
	IODIR0 &= ~(1<<10);        // Configuring P0.10 as input
while(1)
	{
	if (IOPIN0 & (1<<10))
	  {
		IOSET1 |= (1<<16);
		delay();
		IOSET1 |= (1<<17);
		delay();
		IOSET1 |= (1<<18);
		delay();
		IOSET1 |= (1<<19);
		delay();

	   } else{
		IOCLR1 |= (1<<19);
		delay();
		IOCLR1 |= (1<<18);
		delay();
		IOCLR1 |= (1<<17);
		delay();
		IOCLR1 |= (1<<16);
		delay();
	   }
	}
	return 0;
}
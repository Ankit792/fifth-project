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
	PINSEL1	= 0x00000000;					
	IODIR1 = 0X000f0000;				   
	
while(1)
	{

		IOSET1 |= (1<<16);
		delay();
		IOSET1 |= (1<<17);
		delay();
		IOSET1 |= (1<<18);
		delay();
		IOSET1 |= (1<<19);
		delay();


		IOCLR1 |= (1<<19);
		delay();
		IOCLR1 |= (1<<18);
		delay();
		IOCLR1 |= (1<<17);
		delay();
		IOCLR1 |= (1<<16);
		delay();
	}
	return 0;
}
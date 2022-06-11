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
	int j;                         //Variable declared as integer
	unsigned int a[]={0x92,0xc6,0x86,0xf8,0xff,0x86,0xc6}; //integer array with values to display
	PINSEL0 = 0x00000000;
	PINSEL1 = 0x00000000;
	PINSEL2 = 0x00000000;
    IO0DIR |= 0xff<<0;              //Sets direction as output for PORT 0 pins		  p0.0 to p0.7 
	IO0DIR |= (1<<9);
	IO0DIR &= ~(1<<16);              // configuring as input
    while(1)
    {
		if(IOPIN0 &(1<<16))
		{
        	for(j=0;j<=7;j++)
        	{	
            	IO0SET |= a[j];            //sets corresponding pins HIGH
            	delay();                  //Calls delay function
            	IO0CLR|=a[j];            //Sets corresponding pins LOW
        	}
		}
		else
		{
		 	IO0SET |= 0x0f<<9;
			delay();
			IO0CLR |= 0x0f<<9;
			delay();
		}
    }
    return 0;
}

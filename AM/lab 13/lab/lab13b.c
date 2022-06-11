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
	int j;
	unsigned char a[]={0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f};
	PINSEL0 = 0x00000000;
	PINSEL1 = 0x00000000;
	PINSEL2 = 0x00000000;
    IO0DIR |= 0xff;
    while(1)
    {
        for(j=0;j<=9;j++)
        {
            IO0SET|=a[j];
            delay();
            IO0CLR|=a[j];
        }
    }
    return 0;
}

#include <lpc21xx.h>
void initLCD(); 
void enable(); 
void LCD_WriteChar(char );
void LCD_WriteString(char*); 
void LCD_Cmd(unsigned int);
void delay(); 
void main()
{
IODIR0=0XFF; 
IODIR1|=(1<<16)|(1<<17); 
IOCLR0=0XFF; 
IOCLR1=0XFF; 
initLCD(); 
LCD_WriteString("HELLO WORLD"); 
while(1); 
}
void initLCD() 
{
LCD_Cmd(0X38); 
LCD_Cmd(0X0F); 
LCD_Cmd(0X01); 
LCD_Cmd(0X80); 
}
void enable()
{
IOSET1|=(1<<17); 
delay(); 
IOCLR1|=(1<<17);
delay();
}
void LCD_WriteChar(char c)
{
IOSET1|=(1<<16); 
IOCLR0=0XFF; 
IOSET0=c;
enable();
}
void LCD_WriteString(char*string) 
{ 
while (*string!='\0') 
{
LCD_WriteChar(*string); 
string++; 
}
}
void LCD_Cmd(unsigned int cmd) 
{
IOCLR1=(1<<16)|(1<<17);
IOCLR0=0XFF; 
IOSET0=cmd; 
enable(); 
}
void delay()
{
int r=200000;
while(r--);
}

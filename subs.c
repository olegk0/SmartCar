#include "subs.h"
#include <avr/pgmspace.h>
#include "lcd.h"

#define DELAY_MS_CAL	900

void delay_ms0(unsigned char ms)
{
	uint8_t d=0;

	while(ms>0)
	{
		delay(DELAY_MS_CAL);
		ms--;
		d++;
		if(d > 10){
			d=0;
//			if(ms > 16)
//				ms -= do_on_delay();
		}
	}

}
/*
void delay_ms(unsigned int ms)
{
	while(ms>0)
	{
		delay(DELAY_MS_CAL);
		ms--;
	}
	do_on_delay();
}

void delay_s(unsigned char s)
{
	while(s>0)
	{
		delay_ms(1000);
		s--;
	}
}
*/
void num_to_str(struct m2bytes *nbuf)
{
uint8_t tmp,num;
//m2bytes nbuf;

	num = nbuf->one;
	if(num>99) num=99;
	tmp = num / 10;
	nbuf->one = tmp+'0';
	num -= tmp*10; 
	nbuf->two = num+'0';
}

void num2_to_lcd(uint8_t fs,uint8_t num)
{
struct m2bytes nbuf;

	nbuf.one = num;
	num_to_str(&nbuf);
	LcdChr(fs,nbuf.one,0);
	LcdChr(fs,nbuf.two,0);
}

void num3_to_lcd(uint8_t fs,uint8_t num)
{
	uint8_t t;

	t = num / 100;
	LcdChr(fs,'0' + t, 0);
	num = num - t * 100;
	num2_to_lcd(fs, num);
}

void num1_to_lcd(uint8_t fs,uint8_t num)
{
	LcdChr(fs,'0' + num, 0);
}

/*
void to_term(unsigned char num)
{
struct m2bytes nbuf;

	USART_PutChar('\x0d');
	USART_SendStr("num=");
	nbuf.one = num;
	num_to_str(&nbuf);
	USART_PutChar(nbuf.one);
	USART_PutChar(nbuf.two);
	USART_PutChar('\x0d');
}
*/

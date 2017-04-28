
//#include <avr/wdt.h>
#define XTAL F_CPU
#include <stdint.h>
//#include "vars1.h"

/*************************************************************************
 delay loop for small accurate delays: 16-bit counter, 4 cycles/loop
*************************************************************************/
static inline void _delayFourCycles(unsigned int __count)
{
    if ( __count == 0 )    
        __asm__ __volatile__( "rjmp 1f\n 1:" );    // 2 cycles
    else
        __asm__ __volatile__ (
    	    "1: sbiw %0,1" "\n\t"                  
    	    "brne 1b"                              // 4 cycles/loop
    	    : "=w" (__count)
    	    : "0" (__count)
    	   );
   
}


/************************************************************************* 
delay for a minimum of <us> microseconds
the number of loops is calculated at compile-time from MCU clock frequency
*************************************************************************/
#define delay(us)  _delayFourCycles( ( ( 1*(XTAL/4000) )*us)/1000 )

void delay_ms0(unsigned char ms);
void delay_ms(unsigned int ms);
void delay_s(unsigned char s);
uint8_t do_on_delay(void);

struct m2bytes{
uint8_t one;
uint8_t two;
} ;

void num_to_str(struct m2bytes *nbuf);

void num1_to_lcd(uint8_t fs,uint8_t num);
void num2_to_lcd(uint8_t fs,uint8_t num);
void num3_to_lcd(uint8_t fs,uint8_t num);

//on 16MHz
// = 0;// 1-1(20us) 2-8(130us) 3-64(1ms) 4-256(4ms) 5-1024(16ms)
#define t0_on_16us() {TCCR0B=0x01;TCNT0=0;TIFR0=1;}
#define t0_on_128us() {TCCR0B=0x02;TCNT0=0;TIFR0=1;}
#define t0_on_1ms() {TCCR0B=0x03;TCNT0=0;TIFR0=1;}
#define t0_on_4ms() {TCCR0B=0x04;TCNT0=0;TIFR0=1;}
#define t0_on_16ms() {TCCR0B=0x05;TCNT0=0;TIFR0=1;}

#define t0_off() { TCCR0B = 0;}
//#define t0_reset() { TCCR0B = 0;TCNT0=0;TIFR0=1;}
#define t0_overflow() ( TIFR0 & 1 )


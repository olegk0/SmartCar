/*
 * main.c
 *
 *  Created on: 13 дек. 2016 г.
 *      Author: olegvedi@gmail.com
 */


#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/eeprom.h>
#include <stdio.h>
#include <stdlib.h>
#include <avr/pgmspace.h>
#include <ctype.h>
#include <stdint.h>
#include <stdlib.h>
//#include <avr/wdt.h>
#include "vars.h"

#include "lcd.h"
//#include "usart.h"

//#define F_CPU 7372800UL  // Частота 8 MHz

#include "subs.h"

#include "io.h"


uint8_t trg_nasos_ee[2] EEMEM={40,20};//0:Т.ТН(вкл), 1:Т.ТН(вык)
uint8_t trg_vitag_ee[3] EEMEM={80,60,7}; //0:Влаж(вкл),1:Влаж(вык),2:flags_bit(0:СО
uint8_t trg_prit_ee[3] EEMEM={10,5,3};//0:ТН-вкл(вкл)мин,1:dТтн-С,2:flags_bit(0:СО
uint8_t trg_alrm_ee[2] EEMEM={90,7};//0:Темп.тн,1:flags_bit(0:beep_on,1:СО-выс,2:CH-вы


//---------------------------------------------------

ISR (TIMER1_OVF_vect)
{
//	cli();
	TCNT1 = 0x10000 - (F_CPU / 1024) + TCNT1;
//	DateTime.Sec++;

/*	if(rc_timer)
		rc_timer--;

	if(wp_timer>1)
		wp_timer--;
*/

//	sei();
	time_fl=1;
}
/*
ISR (TIMER0_OVF_vect)
{
//	cli();
	DDRD |= (1<<3);
	PORTD ^= (1<<3);
   	TCNT0 = 0x100 - 1; // 7200 / 2 = 3600Hz
   //	sei();
}
*/
static uint8_t IR_check=0;
static uint8_t IR_cmd=0;
#define IR_MID_PULSE_TIME 15 // 0~7 1~24
#define IR_FAIL_CMD 255
#define IR_READY 17

ISR (INT0_vect)
{
	if(t0_overflow()){
		t0_off();
		if(IR_check != IR_READY/* || IR_cmd == IR_FAIL_CMD*/)
			IR_check=0;
		IR_cmd=0;
	}
	if(IR_cmd != IR_FAIL_CMD && IR_check != IR_READY)
	{
		if(TST_BIT(TO_PIN(PORT_IR), PORT_D2_I_IR)){
			t0_on_16ms();
		}else{
			if(TCNT0 < IR_MID_PULSE_TIME){
				if(IR_check){
					if(IR_check<3){
						IR_cmd=IR_FAIL_CMD;
						return;
					}
					IR_check++;
					IR_cmd >>=1;
				}
			}
			else{
				IR_check++;
				IR_cmd = (IR_cmd >> 1) | 0x80;
			}
		}
	}
}

void beep_w(uint8_t decms, uint8_t tone)
{
	uint8_t i,t;

	t = 9600 / tone;
	TO_DDR(PORT_SND) |= _BV(PORT_B4_O_SND);
	while(decms>0) {//38
		for(i=0;i<t;i++)	{//TODO calibrate
			TO_PORT(PORT_SND) ^= _BV(PORT_B4_O_SND);
			delay(tone);
		}
		decms--;
//		if(decms > 1)
//			decms -= (do_on_delay() >> 3);// rem  ms/8
	}
	TO_PORT(PORT_SND) &= ~_BV(PORT_B4_O_SND);
}

uint8_t key_scan(void)
{
	uint8_t tkey=0;

	if(IR_check == IR_READY)
	{
		tkey = IR_cmd;
		IR_cmd=0;
		IR_check=0;
	}

	return tkey;
}

uint8_t key_scan_w(uint8_t timeout)
{
	uint8_t tmp;

	while(timeout >0){
		delay_ms0(10);
		tmp = key_scan();
		if(tmp) break;
		timeout--;
	}
	return (tmp);
}


void switch_motor(uint8_t md)
{
uint8_t t;

	t =_BV(PORT_C0_O_MOTOR1_1) | _BV(PORT_C1_O_MOTOR1_2) | _BV(PORT_C2_O_MOTOR2_1);
	TO_DDR(PORT_MOTOR) |= t;
	TO_PORT(PORT_MOTOR) &= ~t;
	TO_PORT(PORT_MOTOR) |= md;

}

uint8_t get_switchs(void)
{
	uint8_t t;

	TO_PORT(PORT_SW) = TO_PORT(PORT_SW) | _BV(PORT_D6_I_SW_1) | _BV(PORT_D7_I_SW_2);
	delay(1);
	t = (~TO_PIN(PORT_SW)) &  (_BV(PORT_D6_I_SW_1) | _BV(PORT_D7_I_SW_2));
	t >>= PORT_D6_I_SW_1;
	return t;
}

//========================================

void myread_eeprom(void)
{
/*	eeprom_read_block((uint8_t *)&trg[0], &trg_ee[0], sizeof(trg));
	*/
}

void myupdate_eeprom(void)
{
	/*
	eeprom_update_block((uint8_t *)&trg[0], &trg_ee[0], sizeof(trg));
	*/
}

void read_prg_dim_blk_eeprom(uint8_t blk)
{
	uint8_t i;
	eeprom_read_block((uint8_t *)&prg_dim[blk][0], &prg_dim_ee[blk][0], PRGS_LINES_COUNTS);
	for(i=0;i<PRGS_LINES_COUNTS;i++){
		if(prg_dim[blk][i] == 255)
			prg_dim[blk][i] = 0;
	}
}

void update_prg_dim_blk_eeprom(uint8_t blk)
{
	eeprom_update_block((uint8_t *)&prg_dim[blk][0], &prg_dim_ee[blk][0], PRGS_LINES_COUNTS);
}

//----------------------------------------------
void LCD_light(uint8_t on)
{
//Q5 подсветка
/*	if(on){
		SET_BIT(st_flag[0],ST_BFL_BKL);
	}
	else{
		CLR_BIT(st_flag[0],ST_BFL_BKL);
	}
	*/
}

int8_t key2cmd(uint8_t key)
{
	int8_t ret=-1;

	switch(key){
	case KEY_UP:
		ret=CMD_FORWARD;
		break;
	case KEY_DOWN:
		ret=CMD_BACK;
		break;
	case KEY_RIGHT:
		ret=CMD_RIGHT;
		break;
	case KEY_LEFT:
		ret=CMD_LEFT;
		break;
	case KEY_STOP://stop
		ret=CMD_STOP;
		break;
	case KEY_GOTO://goto
		ret=CMD_P_GOTO;
		break;
	case KEY_GOSUB://run prg
		ret=CMD_P_GOSUB;
		break;
	case KEY_SW_R:
		ret=CMD_SET_SW_IF_RIGHT;
		break;
	case KEY_SW_B:
		ret=CMD_SET_SW_IF_BOTH;
		break;
	case KEY_SW_L:
		ret=CMD_SET_SW_IF_LEFT;
		break;
	case KEY_SENS_R:
		ret=CMD_SET_SENS_IF_RIGHT_BIG;
		break;
	case KEY_SENS_B:
		ret=CMD_SET_SENS_IF_BOTH_BIG;
		break;
	case KEY_SENS_L:
		ret=CMD_SET_SENS_IF_LEFT_BIG;
		break;
	}
	return ret;
}

unsigned char* get_cmd_name(uint8_t code)
{
	switch(code){
	case CMD_FORWARD://up
		return (unsigned char*)str_forward;
	case CMD_BACK://down
		return (unsigned char*)str_back;
	case CMD_RIGHT://right
		return (unsigned char*)str_right;
	case CMD_LEFT://left
		return (unsigned char*)str_left;
	case CMD_P_GOTO://goto
		return (unsigned char*)str_goto;
	case CMD_P_GOSUB://run
		return (unsigned char*)str_gosub;
	case CMD_SET_SW_IF_RIGHT:
		return (unsigned char*)str_sw_if_r;
	case CMD_SET_SW_IF_BOTH:
		return (unsigned char*)str_sw_if_b;
	case CMD_SET_SW_IF_LEFT:
		return (unsigned char*)str_sw_if_l;
	case CMD_SET_SENS_IF_RIGHT_BIG:
		return (unsigned char*)str_sens_if_r;
	case CMD_SET_SENS_IF_BOTH_BIG:
		return (unsigned char*)str_sens_if_b;
	case CMD_SET_SENS_IF_LEFT_BIG:
		return (unsigned char*)str_sens_if_l;
	case CMD_STOP:
		return (unsigned char*)str_stop;
	default://stop
		return (unsigned char*)str_unknow;
	}
}

int8_t confirmation(void)
{
	uint8_t p_key=KEY_LEFT, sel=0;

	while(1){
//		if(time_fl)
		{//4Hz
//			time_fl =0;

			if(p_key){
				KEY_BEEPS;

				LcdClear();
				LcdGotoXYFont(0,0);
				LcdFStr(FONT_1X,(unsigned char*)str_conf,0);

				switch(p_key){
				case KEY_MAIN:
					return -1;
				case KEY_RIGHT:
					sel=1;
					break;
				case KEY_LEFT:
					sel=0;
					break;
				case KEY_STOP:
					return sel;
				}

				LcdGotoXYFont(2,3);
				LcdChr(FONT_1X,':',0);
				LcdFStr(FONT_1X,(unsigned char*)str_no,!sel);

				LcdGotoXYFont(7,3);
				LcdChr(FONT_1X,':',0);
				LcdFStr(FONT_1X,(unsigned char*)str_yes,sel);
				LcdUpdate();
			}
			p_key = key_scan();

		}
	}
}


#define	SW_IF_LEFT			0
#define	SW_IF_RIGHT			1
#define	SW_IF_BOTH			2
#define	SENS_IF_LEFT_BIG	3
#define	SENS_IF_RIGHT_BIG	4
#define	SENS_IF_BOTH_BIG	5
#define	PRG_PROC_ADRS_ALL	6
//===============================================
void main (void)
{
	int8_t run_time, prg_line_num, tmpi, tmp_arg;
	uint8_t i, mode, new_mode, prg_num;//,scrclr_fl=0;
	uint8_t p_key, t_sec, disp_update_fl, motor_mode, disp_contr;
	uint8_t prg_run_time, switch_in;
	uint8_t prg_proc_addrs[PRG_PROC_ADRS_ALL];
 	//	DDR 1 - Output
	DDRB = _BV(PORT_B1_O_DC_LCD) | _BV(PORT_B2_O_CE_LCD) |
			_BV(PORT_B3_O_SD_LCD) | _BV(PORT_B4_O_SND) | _BV(PORT_B5_O_CLK_LCD);
	DDRC = _BV(PORT_C0_O_MOTOR1_1) | _BV(PORT_C1_O_MOTOR1_2) | _BV(PORT_C2_O_MOTOR2_1);
	DDRD = _BV(PORT_D1_O_TX);
	switch_motor(0);
	delay_ms0(100);
	disp_contr=eeprom_read_byte(&contrast_ee);
	if(disp_contr > 70)
		disp_contr = 70;
	LcdInit();
	delay_ms0(100);
	LcdContrast(disp_contr);
	LcdClear();
	LcdGotoXYFont(0,0);
	LcdFStr(FONT_1X,(unsigned char*)str_init,0);
	LcdUpdate();
// 	USART_Init();

 	// 	myread_eeprom();
//timer init
	TCCR1A = 0;  	//Т/С1 отсоединен от вывода ОС1, режим ШИМ отклю
	TCCR1B = 4;  	//Коэффициент деления частоты системной	синхр
	TCNT1 = 0x10000 - 2;//(F_CPU / 1024); //Инициализируем счетный регистр
	TIFR1 = 0;       //Сбрасываем все флаги прерываний от Т/С1
	TIMSK1 = 1<<TOIE1;  	//Разрешаем прерывание при переполнении Т/
	TCCR0A = 0;
	TCCR0B = 0;// 1-1(20us) 2-8(130us) 3-64(1ms) 4-256(4ms) 5-1024(16ms)
	TIMSK0 = 0;//Overflow Interrupt Enable

	EICRA = 1; // 3 - rising edge of INT0; 2 - The falling edge of INT0 1 - both
	EIMSK = 1; //INT0: External Interrupt Request 0 Enable

//todo	GIMSK = 0;     	//Запрет внешних прерываний
	sei();
	beep_w(20,255 );

//	wdt_reset();
//	wdt_enable(WDTO_2S);
//	LcdClear();
//	LcdUpdate();
//	PORTD &= ~(1<<3);

	t_sec=0;
	disp_update_fl=1;
	motor_mode=MOTOR_TEST;
	mode=255;
	new_mode=MODE_MAIN;
//	new_mode=MODE_SCAN;
//	new_mode=MODE_PROG_SEL;
//	new_mode=MODE_PROG_DISP;
//	new_mode=MODE_PROG_RUN;
	run_time=1;
	prg_num =0;
	while(1){
		p_key = key_scan();
		switch_in=get_switchs();

		if(p_key){
			KEY_BEEPS;
			switch(p_key){
			case KEY_SCAN:
				new_mode = MODE_SCAN;
				break;
			case KEY_MAIN:
				new_mode = MODE_MAIN;
				eeprom_update_byte(&contrast_ee, disp_contr);
				break;
			case KEY_PRG:
				if(mode == MODE_PROG_RUN)
					new_mode = MODE_PROG_DISP;
				else
					new_mode = MODE_PROG_SEL;
				break;
			default:
				break;
			}
			disp_update_fl=1;
		}

		if(new_mode != mode){
			if(mode == MODE_PROG_DISP)
				update_prg_dim_blk_eeprom(prg_num);
			mode = new_mode;
			disp_update_fl=1;
		}

		if(disp_update_fl){
			LcdClear();
			LcdGotoXYFont(0,0);
			LcdFStr(FONT_1X,(unsigned char*)str_mode,0);

			switch(mode) {
			case MODE_SCAN:
//			if(p_key)
			{
				LcdFStr(FONT_1X,(unsigned char*)str_scan,0);
				LcdGotoXYFont(0,2);
				LcdChr(FONT_1X,':',0);
				num3_to_lcd(FONT_1X, p_key);
			}
			break;
			case MODE_MAIN:
				LcdFStr(FONT_1X,(unsigned char*)str_main,0);
				prg_line_num = key2cmd(p_key);
				if(prg_line_num >= 0 ){
					motor_mode = prg_line_num;
					run_time = 0;
				}else{
					LcdGotoXYFont(0,3);
					switch(p_key){
					case KEY_CONT_P:
						disp_contr++;
						LcdContrast(disp_contr);
						num3_to_lcd(FONT_1X, disp_contr);
						break;
					case KEY_CONT_M:
						disp_contr--;
						LcdContrast(disp_contr);
						num3_to_lcd(FONT_1X, disp_contr);
						break;
					}
				}
				LcdGotoXYFont(0,2);
				LcdFStr(FONT_1X, get_cmd_name(motor_mode), 0);
				LcdGotoXYFont(0,4);
				num3_to_lcd(FONT_1X, switch_in);
				break;
			case MODE_PROG_SEL:
				LcdGotoXYFont(0,1);
				LcdFStr(FONT_1X,(unsigned char*)str_prg_sel,0);
				LcdGotoXYFont(0,2);
				LcdStr(FONT_1X,"0-" INT2STR(PRGS_COUNTS) ":",0);
				if(IS_NUM_KEYS(p_key)){
					p_key=KEYS_TO_NUM(p_key);
					if(prg_num && prg_num < 10){
						prg_num = prg_num * 10 + p_key;
					}else{
						prg_num = p_key;
					}
					if(prg_num >= PRGS_COUNTS){
						if(p_key)
							prg_num = PRGS_COUNTS-1;
						else
							prg_num = 0;
					}
					num2_to_lcd(FONT_1X, prg_num);
				}else
					if(p_key == KEY_ENTER){
						new_mode = MODE_PROG_DISP;
						tmp_arg = -1;
						prg_line_num = 0;
						read_prg_dim_blk_eeprom(prg_num);
					}
				break;
			case MODE_PROG_DISP:
				if(IS_NUM_KEYS(p_key)){
					if(tmp_arg >= 0 ){
						if(tmp_arg && tmp_arg < 10){
							tmp_arg = tmp_arg * 10 + KEYS_TO_NUM(p_key);
						}else{
							tmp_arg = KEYS_TO_NUM(p_key);
						}
						if(tmp_arg > PRGS_COUNTS)
							tmp_arg = PRGS_COUNTS;
					}
				}else{
					tmpi = key2cmd(p_key);
					if(tmpi >= 0 ){
						if(tmp_arg >= 0 ){
							STORE_CMD(prg_dim[prg_num][prg_line_num], tmpi);
							STORE_ARG(prg_dim[prg_num][prg_line_num], 0);
						}
					}else{
						switch(p_key){
						case KEY_CH_P:
							if(prg_line_num)
								prg_line_num--;
							break;
						case KEY_CH_M:
							if(prg_line_num < PRGS_LINES_COUNTS - 1)
								prg_line_num++;
							break;
						case KEY_ENTER:
							if(tmp_arg >= 0 ){
								STORE_ARG(prg_dim[prg_num][prg_line_num],tmp_arg);
								tmp_arg = -1;
							}else{
								tmp_arg = GET_ARG(prg_dim[prg_num][prg_line_num]);
							}
							break;
						case KEY_RUN:
							prg_line_num = -1;
							prg_run_time = 0;
							prg_dim[prg_num][PRGS_LINES_COUNTS]=0;
							new_mode = MODE_PROG_RUN;
							for(i=0;i<PRG_PROC_ADRS_ALL;i++){
								prg_proc_addrs[i]=0;
							}
							break;
						case KEY_CLR:
							tmpi = confirmation();
							if(tmpi == 1){
								for(i=0;i<PRGS_LINES_COUNTS;i++){
									prg_dim[prg_num][i] = 0;
								}
							}
							break;

						}
					}
				}
				LcdFStr(FONT_1X,(unsigned char*)str_prg_prog,0);
				LcdChr(FONT_1X,':',0);
				num2_to_lcd(FONT_1X, prg_num);
				if(prg_line_num > PRGS_LINES_COUNTS - 4)
					tmpi = PRGS_LINES_COUNTS - 4;
				else{
					tmpi = prg_line_num;
					if(prg_line_num)
						tmpi--;
				}
				for(i=0;i<4;i++){
					LcdGotoXYFont(0,i+1);
					if( prg_line_num == tmpi + i)
						LcdChr(FONT_1X,'>',0);
					else{
						num2_to_lcd(FONT_1X, tmpi + i);
					}
					LcdStr(FONT_1X,")",0);
					LcdFStr(FONT_1X,get_cmd_name(GET_CMD(prg_dim[prg_num][tmpi + i])),0);
					LcdChr(FONT_1X,':',0);
					num2_to_lcd(FONT_1X, prg_dim[prg_num][tmpi + i]&0xf);
				}
				LcdGotoXYFont(0,5);
				LcdChr(FONT_1X,':',0);

				if(tmp_arg >=0 ){
//				num2_to_lcd(FONT_1X, prg_str_num);
//				LcdChr(FONT_1X,'-',0);
					LcdFStr(FONT_1X,get_cmd_name(GET_CMD(prg_dim[prg_num][prg_line_num])),0);
					LcdChr(FONT_1X,'-',0);
					num1_to_lcd(FONT_1X, GET_ARG(prg_dim[prg_num][prg_line_num]));
				}
				break;
			case MODE_PROG_RUN:
				if(run_time < 0){
					if(switch_in){
						tmp_arg =-1;
						if(switch_in & (SW_L | SW_R)){
							tmp_arg = SW_IF_BOTH;
						}else if(switch_in & SW_L){
							tmp_arg = SW_IF_LEFT;
						}else if(switch_in & SW_L){
							tmp_arg = SW_IF_RIGHT;
						}
						if(tmp_arg >= 0){
							if(prg_proc_addrs[tmp_arg] && prg_proc_addrs[tmp_arg] != prg_num){
								tmpi = prg_num;
								prg_num = prg_proc_addrs[tmp_arg];
								STORE_CMD(prg_dim[prg_num][PRGS_LINES_COUNTS], tmpi);//store prg
								STORE_ARG(prg_dim[prg_num][PRGS_LINES_COUNTS], (prg_line_num + 1));//store line num for return
								prg_run_time=0;
								prg_line_num=-1;
							}
						}
					}

					if(prg_run_time){
						prg_run_time--;
						run_time = 0;
						motor_mode = GET_CMD(prg_dim[prg_num][prg_line_num]);
					}
					else{
						prg_line_num++;
newline:
						if( prg_line_num == PRGS_LINES_COUNTS /*|| !prg_dim[prg_num][prg_str_num][1]*/){
							if(prg_dim[prg_num][PRGS_LINES_COUNTS]){//return addr
								prg_num=GET_CMD(prg_dim[prg_num][PRGS_LINES_COUNTS]);//get return prg
								prg_line_num=GET_ARG(prg_dim[prg_num][PRGS_LINES_COUNTS]); //get return line num
							}
							if( prg_line_num == PRGS_LINES_COUNTS){
								new_mode = MODE_PROG_DISP;
								tmp_arg = -1;
								prg_line_num = 0;
							}
							break;
						}
						tmp_arg=1;
						i = GET_CMD(prg_dim[prg_num][prg_line_num]);
						switch(i){
						case CMD_P_GOSUB:
							tmpi = prg_num;
							prg_num = GET_ARG(prg_dim[prg_num][prg_line_num]);
							STORE_CMD(prg_dim[prg_num][PRGS_LINES_COUNTS], tmpi);//store prg
							STORE_ARG(prg_dim[prg_num][PRGS_LINES_COUNTS], (prg_line_num + 1));//store line num for return
							prg_line_num = -1;
							break;
						case CMD_P_GOTO:
							prg_line_num = GET_ARG(prg_dim[prg_num][prg_line_num]) -1;
							break;
						case CMD_SET_SW_IF_LEFT:
						case CMD_SET_SW_IF_RIGHT:
						case CMD_SET_SW_IF_BOTH:
							prg_proc_addrs[i - CMD_SET_SW_IF_LEFT] = GET_ARG(prg_dim[prg_num][prg_line_num]);
							prg_line_num++;
							break;
						default:
							tmp_arg=0;
							prg_run_time = GET_ARG(prg_dim[prg_num][prg_line_num]);
						}
						if(tmp_arg)
							goto newline;
						mode=255;
					}
				}

				if(prg_line_num >= 0){
					LcdFStr(FONT_1X,(unsigned char*)str_prg_run,0);
					num1_to_lcd(FONT_1X, prg_num);
					if(prg_line_num > PRGS_LINES_COUNTS - 5)
						tmpi = PRGS_LINES_COUNTS - 5;
					else
						tmpi = prg_line_num;

					for(i=0;i<5;i++){
						LcdGotoXYFont(0,i+1);
						if( prg_line_num == tmpi + i)
							LcdChr(FONT_1X,'>',0);
						else{
							num1_to_lcd(FONT_1X, tmpi + i);
							LcdStr(FONT_1X,") ",0);
						}
						LcdFStr(FONT_1X,get_cmd_name(GET_CMD(prg_dim[prg_num][tmpi + i])),0);
						LcdChr(FONT_1X,':',0);
						if( prg_line_num == tmpi + i)
							num1_to_lcd(FONT_1X, prg_run_time+1);
						else
							num1_to_lcd(FONT_1X, GET_ARG(prg_dim[prg_num][tmpi + i]));
					}
				}
				break;
			}

		}

		if(time_fl){//4Hz
			time_fl =0;
			t_sec++;

/*			LcdChr(FONT_1X,'s',0);
  			num3_to_lcd(FONT_1X, t_sec);
*/
			if(!run_time){
				switch(motor_mode){
				case CMD_FORWARD:
					motor_mode=MOTOR_FORWARD;
					run_time=RUN_TIME_SEC;
					break;
				case CMD_BACK:
					run_time=RUN_TIME_SEC;
					motor_mode=MOTOR_BACK;
					break;
				case CMD_RIGHT:
					motor_mode=MOTOR_RIGHT;
					run_time=TURN_TIME_SEC;
					break;
				case CMD_LEFT:
					motor_mode=MOTOR_LEFT;
					run_time=TURN_TIME_SEC;
					break;
				default:
//					motor_mode=MOTOR_STOP;
					run_time=1;
				}
			}

			if(run_time > 0){
				run_time--;
				if(switch_in && motor_mode != MOTOR_BACK)
					run_time = 0;
			}

			if(!run_time){
				run_time = -1;
				mode=255;
				motor_mode=MOTOR_STOP;
			}

			switch_motor(motor_mode);

		}

		if(disp_update_fl){
			disp_update_fl=0;
			LcdUpdate();
		}

	}
}

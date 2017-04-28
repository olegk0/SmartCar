#ifndef __VARS_H_
#define __VARS_H_

#include <avr/pgmspace.h>
#include <stdio.h>

#define KEY_BEEPS beep_w(5,255)

#define ToSTR(i)	#i
#define INT2STR(i)	ToSTR(i)

//#define SETUP_SCREENS	6
#define MAIN_SCREENS	2

#define MS_TIMEOUT		15	//main screen by timeout

#define LCD_UPDATE_TIME	4

//volatile uint8_t time[3] __attribute__ ((section (".noinit")));
//volatile uint8_t new_mode;

const char str_scan[] PROGMEM = "Сканкод";
const char str_main[] PROGMEM = "Главный";
const char str_prg_sel[] PROGMEM = "Выбор прогр.";
const char str_prg_prog[] PROGMEM = "Прог.";
const char str_prg_run[] PROGMEM = "работа:";
const char str_mode[] PROGMEM = "Режим:";
const char str_init[] PROGMEM = "Инициализация";
const char str_forward[] PROGMEM = "Вперед";
const char str_back[] PROGMEM = "Назад";
const char str_right[] PROGMEM = "Вправо";
const char str_left[] PROGMEM = "Влево";
const char str_stop[] PROGMEM = "Стоп";
const char str_goto[] PROGMEM = "Переход";
const char str_gosub[] PROGMEM = "Вызов";
const char str_loop[] PROGMEM = "Цикл(раз)";
const char str_next[] PROGMEM = "Повторить";
const char str_sw_if_r[] PROGMEM = "Ус.пр.";
const char str_sw_if_l[] PROGMEM = "Ус.лев.";
const char str_sw_if_b[] PROGMEM = "Ус.оба";
const char str_sens_if_r[] PROGMEM = "Сенс.пр.";
const char str_sens_if_l[] PROGMEM = "Сенс.лев.";
const char str_sens_if_b[] PROGMEM = "Сенс.оба";
const char str_conf[] PROGMEM = "Подтверждение";
const char str_yes[] PROGMEM = "Да";
const char str_no[] PROGMEM = "Нет";
const char str_unknow[] PROGMEM = "Неизвестна";

volatile uint8_t time_fl;
//volatile uint8_t line_sel; //line select on setup screens
//volatile uint8_t line_sel_new; //line select new
//volatile uint8_t p_key; //pressed key
//volatile uint8_t scrn_sel_new; // select new screen
//volatile uint8_t scrn_sel; //current screen

#define PRGS_COUNTS 15
#define PRGS_LINES_COUNTS 15

volatile uint8_t prg_dim[PRGS_COUNTS][PRGS_LINES_COUNTS+1];

uint8_t prg_dim_ee[PRGS_COUNTS][PRGS_LINES_COUNTS] EEMEM;
uint8_t contrast_ee EEMEM;

#define	STORE_CMD(var, cmd) var=(var & 0xf)|(cmd << 4)
#define	STORE_ARG(var, arg) var=(var & 0xf0)|(arg & 0xf)

#define	GET_CMD(var) (var >> 4)
#define	GET_ARG(var) (var & 0xf)


//---------------------------------------------

#define KEY_PRG			28 //PRG mode
#define KEY_UP			124
#define KEY_DOWN		123
#define KEY_RIGHT		90
#define KEY_LEFT		91
#define KEY_RUN			23
#define KEY_STOP		122 //menu
#define KEY_SCAN		115 //Channel Scan
#define KEY_MAIN		4 //display
#define KEY_			66 //Live spatial
#define KEY_			145 //bass blaster
#define KEY_CH_P		25
#define KEY_CH_M		24
#define KEY_VOL_P		30
#define KEY_VOL_M		31
//KEYS 0-9		32 - 41
#define IS_NUM_KEYS(k)	(k >= 32 && k <= 41)
#define KEYS_TO_NUM(k)	(k - 32)
#define KEY_ENTER		5 //Return
#define KEY_CONT_P		138	//eco sens
#define KEY_CONT_M		19	//tv/text/mix
#define KEY_GOSUB		157 //NUM	-	GO_SUB

#define KEY_GOTO		3	//off timer - GOTO

#define KEY_CLR			9	//mode
#define KEY_			121	//pic mode
#define KEY_			146	//colour
#define KEY_			180	//sound

#define KEY_RED			60	//red
#define KEY_GRN			61	//green
#define KEY_YEL			62	//yellow
#define KEY_BLU			63	//blue

#define KEY_SW_R		50	//store
#define KEY_SW_B		6	//index
#define KEY_SW_L		17	//hold
#define KEY_SENS_R		21	//cancel
#define KEY_SENS_B		2	//subpage
#define KEY_SENS_L		48	//size

enum{
	MODE_MAIN,
	MODE_SCAN,
	MODE_PROG_SEL,
	MODE_PROG_DISP,
	MODE_PROG_RUN,
};

#define SW_R	1
#define SW_L	2

#define RUN_TIME_SEC	4
#define TURN_TIME_SEC	2

enum{
	MOTOR_STOP=0,
	MOTOR_FORWARD=0b101,
	MOTOR_BACK=0b010,
	MOTOR_RIGHT=0b001,
	MOTOR_LEFT=0b100,
	MOTOR_TEST=0b111,
};

enum{
	CMD_STOP=0,
	CMD_FORWARD,
	CMD_BACK,
	CMD_RIGHT,
	CMD_LEFT,
	CMD_P_GOTO,
	CMD_P_GOSUB,
	CMD_P_LOOP,
	CMD_P_NEXT,
	CMD_SET_SW_IF_LEFT,
	CMD_SET_SW_IF_RIGHT,
	CMD_SET_SW_IF_BOTH,
	CMD_SET_SENS_IF_LEFT_BIG,
	CMD_SET_SENS_IF_RIGHT_BIG,
	CMD_SET_SENS_IF_BOTH_BIG,
};

#define SWITCH_BIT(var,bit)	{(var) = (var) ^ (1<<bit);}
#define SET_BIT(var,bit)	{(var) = (var) | (1<<bit);}
#define CLR_BIT(var,bit)	{(var) = (var) & ~(1<<bit);}
#define TST_BIT(var,bit)	((var) & (1<<bit))

#endif

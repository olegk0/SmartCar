/*
 * io.h
 *
 *  Created on: 30 окт. 2016 г.
 *      Author: olegvedi@gmail.com
 */

#ifndef IO_H_
#define IO_H_

#define _CAT(a, b)                      a ## b
#define CAT(a, b)                       _CAT(a, b)

#define TO_PORT(p) CAT(PORT,p)
#define TO_PIN(p) CAT(PIN,p)
#define TO_DDR(p) CAT(DDR,p)

//********PORT B**********
//#define PORT_B0_O_SH_595	0
#define PORT_B1_O_DC_LCD	1
#define PORT_B2_O_CE_LCD	2
#define PORT_B3_O_SD_LCD	3
#define PORT_B4_O_SND		4
#define PORT_B5_O_CLK_LCD	5

#define PORT_LCD	B
#define PORT_SND	B

//********PORT C**********
#define PORT_C0_O_MOTOR1_1	0
#define PORT_C1_O_MOTOR1_2	1
#define PORT_C2_O_MOTOR2_1	2
//#define PORT_C3_O_MOTOR2_2	3
//#define PORT_C4_O_RST_1302	4
//#define PORT_C5_O_ST_595	5

#define PORT_MOTOR	C

//********PORT D**********
#define PORT_D0_I_RX	0
#define PORT_D1_O_TX	1
#define PORT_D2_I_IR	2
//#define PORT_D3_I_	3
#define PORT_D6_I_SW_1	6
#define PORT_D7_I_SW_2	7

#define PORT_SERIAL	D
#define PORT_IR		D
#define PORT_SW		D

#endif /* IO_H_ */

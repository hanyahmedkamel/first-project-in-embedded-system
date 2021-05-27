/* 
 * File:   Timer.h
 * Author: Safaa
 *
 * Created on April 23, 2021, 1:03 PM
 */

#ifndef TIMER_H
#define	TIMER_H

#define normal   0
#define CTC      1
#define PWM      2
#define FPWM     3

#define Timer_off   0
#define CLK_0       1
#define CLK_8       2
#define CLK_64      3
#define CLK_256     4
#define CLK_1024    5
#define CLK_EXT_F   6
#define CLK_EXT_R   7

#define ENABLE      1
#define DISABLE     0

#define OC0_Disconnected    0

#define CTC_OC0_Toggle      1
#define CTC_Clear           2
#define CTC_Set             3

#define PWM_OC0_clearOnCountUp         2   
#define PWM_OC0_setOnCountUp           3

void Timer0_init(int MODE, int Clk);
void Timer0_OVIE(int state);
void Timer0_OCIE(int state);
void Timer0_setMaxPoint(unsigned char val);
void Timer0_setOC0Mode(int MODE);
#endif	/* TIMER_H */

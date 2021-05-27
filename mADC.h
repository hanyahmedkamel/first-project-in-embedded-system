
#ifndef MADC_H
#define	MADC_H


#define Vref_INTERNAL 3 
#define Vref_AVCC     1
#define Vref_AREF     0
// PRESCALAR
#define PS_2          1
#define PS_4          2
#define PS_8          3
#define PS_16         4
#define PS_32         5
#define PS_64         6
#define PS_128        7

void ADC_selectVref(int Vref);
void ADC_selectChannel(int ChannelNumber);
void ADC_selectPrescalar(int Prescalar);
void ADC_ENABLE();
void ADC_DISABLE();
void ADC_START();
int  ADC_READ_R();
int  ADC_READ_L();
void ADC_INIT(int ChannelNumber, int Vref, int Prescalar);
void ADC_WAIT();

#endif	/* MADC_H */


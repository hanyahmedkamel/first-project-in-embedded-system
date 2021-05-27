#include <avr/io.h>
#include "mADC.h"

void ADC_selectVref(int Vref) {
    
    // Clear Reference selection Bits
    ADMUX &= ~((1 << REFS1) | (1 << REFS0));
    //    ADMUX |= (Vref <<6);
    switch (Vref) {
        case Vref_AREF:
            // No need to do any thing
            break;
        case Vref_AVCC:
            ADMUX |=(1 << REFS0);
            break;
        case Vref_INTERNAL:
            ADMUX |= (1 << REFS1) | (1 << REFS0);
            break;
    }
}

void ADC_selectChannel(int ChannelNumber) {
    ADMUX &= 0xE0;
//    ADMUX &= ~((1<<MUX0)|.....(1<<MUX4));
    ADMUX |= ChannelNumber;
}

void ADC_selectPrescalar(int Prescalar){
    ADCSRA &= 0xF8; //0b11111000
//    ADCSRA &= ~((1<<ADPS2)|(1<<ADPS1)|(1<<ADPS0));
    ADCSRA |= Prescalar;
}
void ADC_ENABLE(){
    ADCSRA |= (1<<ADEN);
}
void ADC_DISABLE(){
    ADCSRA &= ~(1<<ADEN);
}
void ADC_START(){
    ADCSRA |= (1<<ADSC);
}
int ADC_READ_R(){
    int data = ADCL;
    data |= (ADCH <<8);
    return data;
}
int ADC_READ_L(){
    int data = ADCL;
    data |= (ADCH <<8);
    return (data>>6);
}
void ADC_INIT(int ChannelNumber,int Vref,int Prescalar){
    
    ADC_selectChannel(ChannelNumber);
    ADC_selectPrescalar(Prescalar);
    ADC_selectVref(Vref);
    
    // Enable ADC Driver
    ADC_ENABLE();            
}

void ADC_WAIT(){
    while(!(ADCSRA & (1<<ADIF)));
}
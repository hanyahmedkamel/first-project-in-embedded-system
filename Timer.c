#include <avr/io.h>
#include "Timer.h"

void Timer0_init(int MODE, int Clk) {
    switch (MODE) {
        case normal:
            TCCR0 &= ~((1 << WGM01) | (1 << WGM00));
            break;
        case CTC:
            TCCR0 &= ~((1 << WGM01));
            TCCR0 |= ((1 << WGM00));
            break;
        case PWM:
            TCCR0 &= ~((1 << WGM00));
            TCCR0 |= ((1 << WGM01));
            break;
        case FPWM:
            TCCR0 |= ((1 << WGM01) | (1 << WGM00));
            break;
        default:
            break;
    }

    TCCR0 &= ~((1 << CS02) | (1 << CS01) | (1 << CS00));
    TCCR0 |= Clk;

}


void Timer0_OVIE(int state){
    if(state){
        TIMSK |= (1<<TOIE0);
    }else{
        TIMSK &= ~(1<<TOIE0);
    }
}

void Timer0_OCIE(int state){
    if(state){
        TIMSK |= (1<<OCIE0);
    }else{
        TIMSK &= ~(1<<OCIE0);
    }
}

void Timer0_setMaxPoint(unsigned char val){
    OCR0 = val;
}


void Timer0_setOC0Mode(int MODE){
    TCCR0 &= ~((1<<COM01)|(1<<COM00));
    if(MODE != OC0_Disconnected){
        DDRB |= (1<<3); // set OC0 pin as output pin
    }
    TCCR0 |= (MODE<<4);
}
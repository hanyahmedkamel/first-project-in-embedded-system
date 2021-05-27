#include <avr/io.h>
#include "mUART.h"
#include <stdlib.h>

#define F_CPU 16000000UL


void UART_init(int BaudRate){
    // Enable TXEN, RXEN
    UCSRB |= (1<<TXEN)|(1<<RXEN);
    // Enable RX Interrupt
//    UCSRB |= (1<<RXCIE);
    // Call UART_setBaudRate(BaudRate);
    UART_setBaudRate(BaudRate);
}
void UART_setBaudRate(int BaudRate){
    // Calculate from Equation
    //  Equation
    int UBRR = ((F_CPU/16.0)/BaudRate)-1;
    UBRRL = (char) UBRR;
    UBRRH = (UBRR>>8);
}
void UART_transmit(char data){
    while(!(UCSRA & (1<< UDRE)));
    UDR = data;
}

void UART_transmit_str(char str[]){
    
    for(int i = 0 ; str[i]!='\0' ; i++){
        UART_transmit(str[i]);
    }
}

void UART_transmit_num(int num){
    char str[11];
    itoa(num, str, 10);
    UART_transmit_str(str);
}
char UART_receive(){
    while(!(UCSRA & (1<< RXC)));
    return UDR;
}

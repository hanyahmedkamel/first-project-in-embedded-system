
#ifndef MUART_H
#define	MUART_H

void UART_init();
void UART_setBaudRate(int BaudRate);
void UART_transmit(char data);
void UART_transmit_str(char str[]);
void UART_transmit_num(int num);
char UART_receive();


#endif	/* MUART_H */


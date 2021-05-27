#include "EXTERNAL_INTERRUPTS.h"
#include <avr/io.h>

void INT_ENABLE(int INT_NAME, int INT_MODE){
    if(INT_NAME == INT_0){
        GICR &= ~(1<<INT0); // DISABLE
        switch(INT_MODE){
            case INT_MODE_LOW:
                MCUCR &= ~((1<<ISC01)| (1<<ISC00));
                break;
            case INT_MODE_ANY:
                MCUCR |= (1<<ISC00);
                MCUCR &= ~(1<<ISC01);
                break;
            case INT_MODE_FALLING:
                MCUCR |= (1<<ISC01);
                MCUCR &= ~(1<<ISC00);
                break;
            case INT_MODE_RISING:
                MCUCR |= ((1<<ISC01)| (1<<ISC00));
                break;
        }
        GICR |= (1<<INT0);  // ENABLE
    }else if(INT_NAME == INT_1){
        GICR &= ~(1<<INT1); // DISABLE
        switch(INT_MODE){
            case INT_MODE_LOW:
                MCUCR &= ~((1<<ISC11)| (1<<ISC10));
                break;
            case INT_MODE_ANY:
                MCUCR |= (1<<ISC10);
                MCUCR &= ~(1<<ISC11);
                break;
            case INT_MODE_FALLING:
                MCUCR |= (1<<ISC11);
                MCUCR &= ~(1<<ISC10);
                break;
            case INT_MODE_RISING:
                MCUCR |= ((1<<ISC11)| (1<<ISC10));
                break;
        }
        GICR |= (1<<INT1);  // ENABLE
    }else if(INT_NAME == INT_2){
        GICR &= ~(1<<INT2); // DISABLE
        switch(INT_MODE){
          
            case INT_MODE_FALLING:
                MCUCSR &= ~(1<<ISC2);
                break;
            case INT_MODE_RISING:
                MCUCSR |= (1<<ISC2);
                break;
        }
        GICR |= (1<<INT2);  // ENABLE
    }
    else{
        // DO Nothing
    }
}

void INT_DISABLE(int INT_NAME){
    switch(INT_NAME){
        case INT_0:
            GICR &= ~(1<<INT0);
            break;
        case INT_1:
            GICR &= ~(1<<INT1);
            break;
        case INT_2:
            GICR &= ~(1<<INT2);
            break;
    }
}

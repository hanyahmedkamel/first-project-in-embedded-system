 #ifndef ExternalInterrupts
#define	ExternalInterrupts

#include <xc.h> // include processor files - each processor file is guarded.  

// INT_NAME
#define INT_0  0
#define INT_1  1
#define INT_2  2
// INT_MODE
#define INT_MODE_LOW        0
#define INT_MODE_ANY        1
#define INT_MODE_FALLING    2
#define INT_MODE_RISING     3


void INT_ENABLE(int INT_NAME, int INT_MODE);
void INT_DISABLE(int INT_NAME);



#endif	/* XC_HEADER_TEMPLATE_H */


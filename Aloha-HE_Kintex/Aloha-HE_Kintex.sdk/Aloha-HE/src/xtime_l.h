#ifndef SRC_TIME_C_
#define SRC_TIME_C_

/***************************************
 * Timer infrastructure to measure time
 ***************************************/

typedef unsigned long long XTime;

void XTime_GetTime(XTime* t);
void initTimer();

#endif

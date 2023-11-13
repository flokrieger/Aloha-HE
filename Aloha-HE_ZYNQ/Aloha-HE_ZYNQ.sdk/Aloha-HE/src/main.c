/*********************************************
 * Main file.
 * Used for initialization, testing and actual
 * encode+encrypt and decode+decrypt.
*********************************************/

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xil_cache.h"

#include "ckksAccelerator.h"
#include "communication.h"
#include "Testing/ckksTest.h"
#include "xtime_l.h"

volatile uint32_t* axi_address_base;

int main()
{
    init_platform();

	axi_address_base = (uint32_t*)0x40000000;

	cdmaWaitForIdle(); // waits for the DMA to be configured and ready.
	extern void initIndexMap();
	initIndexMap(); // initializes the index map for projection (for testing only)
	ckks_init(); // initializes software-internal data structures for CKKS.

	int test_type = 0;

	printf("******************************************************************\n");
	printf("*                            Aloha-HE                            *\n");
	printf("******************************************************************\n");


	while(test_type != 3){
		if(test_type == 0)
			test_hardware();
		else if(test_type == 1)
			test_timing();
		else
			break;

		printf("Type of test [0: Rerun test, 1: time check, 3:End] : ");
		scanf("%d", &test_type);
	}


	Xil_DCacheFlush();
	Xil_DCacheDisable();

	printf("Finish\n");

    cleanup_platform();
    return 0;
}

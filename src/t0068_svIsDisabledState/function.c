#include <stdio.h>
#include "..\svdpi.h"

extern int sv_wait_task(void);

int c_worker(void)
{
    printf("C: before sv_wait_task\n");

    if (sv_wait_task()) 
	{
        if (svIsDisabledState()) {
            printf("C: imported task is disabled\n");
            svAckDisabledState();
            return 1;
        }
        printf("C: exported task ended due to disable, but imported task is not disabled\n");
        return 0;
    }
    printf("C: normal return from sv_wait_task\n");
    return 0;
}
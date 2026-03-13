#include <stdio.h>
#include "..\svdpi.h"

int svGetPartselLogicFunction(const svLogicVecVal* data)
{
    svLogicVec32 part[1];

    part[0].c = 0;
    part[0].d = 0;
	
    svGetPartselLogic(part, data, 0, 8);

    return (int)part[0].c;
}
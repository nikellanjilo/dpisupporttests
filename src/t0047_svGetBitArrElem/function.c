#include <stdio.h>
#include "..\svdpi.h"

unsigned char svGetBitArrElemFunction(const svOpenArrayHandle data, int index)
{
	svBitVecVal vec[1];
    svGetBitArrElemVecVal(vec, data, index);

    return (unsigned char)(vec[0]);
}
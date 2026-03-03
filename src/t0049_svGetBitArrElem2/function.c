#include <stdio.h>
#include "..\svdpi.h"

unsigned char svGetBitArrElem2Function(const svOpenArrayHandle data, int index, int index2)
{
	svBitVecVal vec[1];
    svGetBitArrElem2VecVal(vec, data, index, index2);

    return (unsigned char)(vec[0]);
}
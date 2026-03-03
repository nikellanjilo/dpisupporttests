#include <stdio.h>
#include "..\svdpi.h"

unsigned char svGetBitArrElem3Function(const svOpenArrayHandle data, int index, int index2, int index3)
{
	svBitVecVal vec[1];
    svGetBitArrElem3VecVal(vec, data, index, index2, index3);

    return (unsigned char)(vec[0]);
}
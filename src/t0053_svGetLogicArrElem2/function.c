#include <stdio.h>
#include "..\svdpi.h"

unsigned char svGetLogicArrElem2Function(const svOpenArrayHandle data, int index, int index2)
{
	svLogicVecVal vec[1];
    vec[0].aval = 0;
    vec[0].bval = 0;
    svGetLogicArrElem2VecVal(vec, data, index, index2);
    return (unsigned char)(vec[0].aval & 0xFF);
}
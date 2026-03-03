#include <stdio.h>
#include "..\svdpi.h"

unsigned char svGetLogicArrElem3Function(const svOpenArrayHandle data, int index, int index2, int index3)
{
	svLogicVecVal vec[1];
    vec[0].aval = 0;
    vec[0].bval = 0;
    svGetLogicArrElem3VecVal(vec, data, index, index2, index3);
    return (unsigned char)(vec[0].aval & 0xFF);
}
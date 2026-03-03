#include <stdio.h>
#include "..\svdpi.h"

unsigned char svGetLogicArrElem2VecValFunction(const svOpenArrayHandle data, int index, int index2)
{
	svLogicVecVal value[1];
	value[0].aval = 0;
	value[0].bval = 0;
    svGetLogicArrElem2VecVal(value, data, index, index2);
	return (unsigned char)(value[0].aval);
}
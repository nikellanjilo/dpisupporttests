#include <stdio.h>
#include "..\svdpi.h"

unsigned char svGetLogicArrElem3VecValFunction(const svOpenArrayHandle data, int index, int index2, int index3)
{
	svLogicVecVal value[1];
	value[0].aval = 0;
	value[0].bval = 0;
    svGetLogicArrElem3VecVal(value, data, index, index2, index3);
	return (unsigned char)(value[0].aval);
}
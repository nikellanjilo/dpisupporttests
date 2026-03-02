#include <stdio.h>
#include "..\svdpi.h"

const char* getArrayElemPtrFunction(const svOpenArrayHandle arr, int index) {
	unsigned char* ptr = (unsigned char*) svGetArrElemPtr1(arr, index);
	if (ptr == NULL)
	{
		return "ptr is null";
	}
	char tmp[128];
	snprintf(tmp, sizeof(tmp), "Array index = 0x%02X\n", *ptr);
	return tmp;
}


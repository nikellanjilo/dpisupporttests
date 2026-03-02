#include <stdio.h>
#include "..\svdpi.h"

const char* getArrayPtrFunction(const svOpenArrayHandle arr) {
	unsigned char* ptr = (unsigned char*) svGetArrayPtr(arr);
	if (ptr == NULL)
	{
		return "ptr is null";
	}
	char tmp[128];
	snprintf(tmp, sizeof(tmp), "Byte value = 0x%02X\n", *ptr);
	return tmp;
}

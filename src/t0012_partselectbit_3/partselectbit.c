#include "../svdpi.h"

int partselectbit(const svBitPackedArrRef data, int idx, int width) {
	svBitVecVal tmp[1];
	svGetPartSelectBit(tmp, data, idx, width);
	int mask = (1 << width) - 1;
	return tmp[0] & mask;
}

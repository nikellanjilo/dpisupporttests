#include "svdpi.h"

int partselectbit(const svBitPackedArrRef data, int idx) {
    svBitVecVal tmp[1];
    svGetPartSelectBit(tmp, data, idx, 1);
	return tmp[0] & 1;
}

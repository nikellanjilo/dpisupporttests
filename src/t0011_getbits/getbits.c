#include "svdpi.h"

int getbits(const svBitPackedArrRef data, int idx, int width) {
    return svGetBits(data, idx, width);
}

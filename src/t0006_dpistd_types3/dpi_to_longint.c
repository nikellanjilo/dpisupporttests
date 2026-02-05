#include "svdpi.h"
#include <stdint.h>

long long dpi_to_longint(const svBitVecVal* a) {
    uint64_t v = ((uint64_t)a[1] << 32) | (uint64_t)a[0];
    return (long long)v;
}

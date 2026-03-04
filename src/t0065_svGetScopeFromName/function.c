#include <stdio.h>
#include "..\svdpi.h"

const char* svGetScopeFromNameFunction(void)
{
    svScope scope = svGetScope();
    return svGetNameFromScope(scope);
}
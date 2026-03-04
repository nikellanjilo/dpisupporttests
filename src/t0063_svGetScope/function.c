#include <stdio.h>
#include "..\svdpi.h"

const char* svGetScopeFunction(void)
{
    svScope scope = svGetScope();
    return svGetNameFromScope(scope);
}
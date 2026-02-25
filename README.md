# dpisupporttests
A suite of tests to validate SystemVerilog DPI support across simulators. The goal is to provide minimal reproducible C/C++ &lt;= => SV cases, expose incompatibilities, and document tool behavior. Released under the MIT License.


t0001 - simple C-call;  
t0002 - call C-functions from several C-files;  
t0003 - transform logic vector to string  
t0004 - transform bit vector to string  
t0005 - transform bit vector (svBitVecVal) to int  
t0006 - transform bit vector (svBitVecVal) to longint  
t0007 - print DPI version through svDpiVersion  
t0008 - print scope name through svGetNameFromScope  
t0009 - print caller info - file, position of SystemVerilog function call through svGetCallerInfo  
t0010 - get part select of bit vector through svGetPartSelectBit  
t0011 - get bits through svGetBits  
t0012 - get part select of 3-bit vector through svGetPartSelectBit  
t0013 - get part select of 3-bit logic vector through svGetPartSelectLogic like SV-longint  
t0014 - mirror values in bit[31:0] through svPutBitselBit  
t0015 - mirror values in logic[31:0] through svPutBitselLogic  
t0016 - (doesn't work)??? through svPutPartselBit  
t0017 - (doesn't work)??? through svPutPartselLogic  
t0018 - ??? through svLeft  
t0019 - ??? through svRight  
t0020 - ??? through svLow  
t0021 - ??? through svHigh  
t0022 - ??? through svIncrement  
t0023 - ??? through svSize  
t0024 - ??? through svDimensions  
t0025 - ??? through svGetArrayPtr  
t0026 - ??? through svSizeOfArray  
t0027 - ??? through svGetArrElemPtr    
t0028 - ??? through svGetArrElemPtr1    
t0029 - ??? through svGetArrElemPtr2   
t0030 - ??? through svGetArrElemPtr3   
t0031 - ??? through svPutBitArrElemVecVal    
t0032 - ??? through svPutBitArrElem1VecVal   
t0033 - ??? through svPutBitArrElem2VecVal   
t0034 - ??? through svPutBitArrElem3VecVal   
t0035 - ??? through svPutLogicArrElemVecVal   
t0036 - ??? through svPutLogicArrElem1VecVal     
t0037 - ??? through svPutLogicArrElem2VecVal     
t0038 - ??? through svPutLogicArrElem3VecVal   
t0039 - ??? through svGetBitArrElemVecVal   
t0040 - ??? through svGetBitArrElem1VecVal   
t0041 - ??? through svGetBitArrElem2VecVal   
t0042 - ??? through svGetBitArrElem3VecVal   
t0043 - ??? through svGetLogicArrElemVecVal   
t0044 - ??? through svGetLogicArrElem1VecVal   
t0045 - ??? through svGetLogicArrElem2VecVal   
t0046 - ??? through svGetLogicArrElem3VecVal   
t0047 - ??? through svGetBitArrElem   
t0048 - ??? through svGetBitArrElem1   
t0049 - ??? through svGetBitArrElem2   
t0050 - ??? through svGetBitArrElem3   
t0051 - ??? through svGetLogicArrElem   
t0052 - ??? through svGetLogicArrElem1   
t0053 - ??? through svGetLogicArrElem2   
t0054 - ??? through svGetLogicArrElem3   
t0055 - ??? through svPutLogicArrElem   
t0056 - ??? through svPutLogicArrElem1   
t0057 - ??? through svPutLogicArrElem2   
t0058 - ??? through svPutLogicArrElem3   
t0059 - ??? through svPutBitArrElem    
t0060 - ??? through svPutBitArrElem1   
t0061 - ??? through svPutBitArrElem2   
t0062 - ??? through svPutBitArrElem3   
t0063 - ??? through svGetScope   
t0064 - ??? through svSetScope   
t0065 - ??? through svGetScopeFromName     
t0066 - ??? through svPutUserData  
t0067 - ??? through svGetUserData     
t0068 - ??? through svIsDisabledState    
t0069 - ??? through svAckDisabledState   
t0070 - ??? through svSizeOfBitPackedArr   
t0071 - ??? through svSizeOfLogicPackedArr   
t0072 - ??? through svPutBitVec32   
t0073 - ??? through svPutLogicVec32   
t0074 - ??? through svGetBitVec32     
t0075 - ??? through svGetLogicVec32  
t0076 - ??? through svGetSelectBit    
t0077 - ??? through svGetSelectLogic    
t0078 - ??? through svPutSelectBit   
t0079 - ??? through svPutSelectLogic   
t0080 - ??? through svGet32Bits    
t0081 - ??? through svGet64Bits     
t0082 - ??? through svPutPartSelectBit    
t0083 - ??? through svPutPartSelectLogic   
t0084 - ??? through svPutBitArrElemVec32   
t0085 - ??? through svPutBitArrElem1Vec32    
t0086 - ??? through svPutBitArrElem2Vec32   
t0087 - ??? through svPutBitArrElem3Vec32   
t0088 - ??? through svPutLogicArrElemVec32  
t0089 - ??? through svPutLogicArrElem1Vec32  
t0090 - ??? through svPutLogicArrElem2Vec32   
t0091 - ??? through svPutLogicArrElem3Vec32  
t0092 - ??? through svGetBitArrElemVec32   
t0093 - ??? through svGetBitArrElem1Vec32  
t0094 - ??? through svGetBitArrElem2Vec32  
t0095 - ??? through svGetBitArrElem3Vec32  
t0096 - ??? through svGetLogicArrElemVec32  
t0097 - ??? through svGetLogicArrElem1Vec32   
t0098 - ??? through svGetLogicArrElem2Vec32   
t0099 - ??? through svGetLogicArrElem3Vec32   
t0100 - ??? through svScope  
t0101 - ??? through svOpenArrayHandle   
t0102 - ??? through svGetBitselBit   
t0103 - ??? through svGetBitselLogic   
t0104 - ??? through svGetPartselBit   
t0105 - ??? through svGetPartselLogic   
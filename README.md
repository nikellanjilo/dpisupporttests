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
t0016 - put values in bit [31:0] vector through svPutPartselBit  
t0017 - put values in logic [31:0] vector through svPutPartselLogic  
t0018 - print left array value through svLeft  
t0019 - print right array value through svRight  
t0020 - print lowest array value svLow  
t0021 - print highest array value svHigh  
t0022 - print array's direction through svIncrement  
t0023 - print array size through svSize  
t0024 - print array's deeps through svDimensions  
t0025 - work with array handler through svGetArrayPtr  
t0026 - print array size with elements through svSizeOfArray  
t0027 - print values of byte unsigned array through svGetArrElemPtr    
t0028 - print values of byte unsigned array through svGetArrElemPtr1    
t0029 - print values of byte unsigned two-dimensional array through svGetArrElemPtr2   
t0030 - print values of byte unsigned 3D array through svGetArrElemPtr3   
t0031 - put values in bit [7:0] array through svPutBitArrElemVecVal    
t0032 - put values in bit [7:0] array svPutBitArrElem1VecVal   
t0033 - put values in bit [7:0] 2D-array svPutBitArrElem2VecVal   
t0034 - put values in bit [7:0] 3D-array through svPutBitArrElem3VecVal   
t0035 - put values in logic [7:0] array through svPutLogicArrElemVecVal   
t0036 - put values in logic [7:0] array  through svPutLogicArrElem1VecVal     
t0037 - put values in logic [7:0] 2D-array through svPutLogicArrElem2VecVal     
t0038 - put values in logic [7:0] 3D-array through svPutLogicArrElem3VecVal   
t0039 - get and print values of bit [7:0] array through svGetBitArrElemVecVal   
t0040 - get and print values of bit [7:0] array through svGetBitArrElem1VecVal   
t0041 - get and print values of bit [7:0] 2D-array through svGetBitArrElem2VecVal   
t0042 - get and print values of bit [7:0] 3D-array through svGetBitArrElem3VecVal   
t0043 - get and print values of logic [7:0] array through svGetLogicArrElemVecVal   
t0044 - get and print values of logic [7:0] array through svGetLogicArrElem1VecVal   
t0045 - get and print values of logic [7:0] 2D-array through svGetLogicArrElem2VecVal   
t0046 - get and print values of logic [7:0] 3D-array through svGetLogicArrElem3VecVal   
t0047 - get and print values of bit [7:0] array through svGetBitArrElem   
t0048 - get and print values of bit [7:0] array through svGetBitArrElem1   
t0049 - get and print values of bit [7:0] 2D-array through svGetBitArrElem2   
t0050 - get and print values of bit [7:0] 3D-array through svGetBitArrElem3   
t0051 - get and print values of logic [7:0] array through svGetLogicArrElem   
t0052 - get and print values of logic [7:0] array through svGetLogicArrElem1   
t0053 - get and print values of logic [7:0] 2D-array through svGetLogicArrElem2   
t0054 - get and print values of logic [7:0] 3D-array through svGetLogicArrElem3   
t0055 - put value in logic [7:0] array through svPutLogicArrElem   
t0056 - put value in logic [7:0] array through svPutLogicArrElem1   
t0057 - put value in logic [7:0] 2D-array through svPutLogicArrElem2   
t0058 - put value in logic [7:0] 3D-array through svPutLogicArrElem3   
t0059 - put value in 1-bit bit-array through svPutBitArrElem    
t0060 - put value in 1-bit bit-array through svPutBitArrElem1   
t0061 - put value in 1-bit bit-2D array through svPutBitArrElem2   
t0062 - put value in 1-bit bit-3D array through svPutBitArrElem3   
t0063 - get scope handler through svGetScope (print scope name via svGetNameFromScope)  
t0064 - set scope through svSetScope (print scope name via export SystemVerilog function)  
t0065 - print scope name through svGetScopeFromName     
t0066 - init user data and increment values in next calling through svPutUserData  
t0067 - init user data and increment values in next calling through svGetUserData     
t0068 - ??? through svIsDisabledState    
t0069 - ??? through svAckDisabledState   
t0070 - get size of bit [127:0] array through svSizeOfBitPackedArr   
t0071 - ??? through svSizeOfLogicPackedArr   
t0072 - ??? through svPutBitVec32   
t0073 - ??? through svPutLogicVec32   
t0074 - ??? through svGetBitVec32     
t0075 - ??? through svGetLogicVec32  
t0076 - ??? through svGetSelectBit    
t0077 - ??? through svGetSelectLogic    
t0078 - ??? through svPutSelectBit   
t0079 - ??? through svPutSelectLogic   
t0080 - print value of reg [31:0] with offset through svGet32Bits    
t0081 - print value of reg [31:0] with offset through svGet64Bits     
t0082 - put value in bit [31:0] vector through svPutPartSelectBit    
t0083 - put value in slice of logic [31:0] vector through svPutPartSelectLogic   
t0084 - put value in element of bit [31:0] array through svPutBitArrElemVec32 (doesnt work in Questa)  
t0085 - ??? through svPutBitArrElem1Vec32    
t0086 - ??? through svPutBitArrElem2Vec32   
t0087 - ??? through svPutBitArrElem3Vec32   
t0088 - ??? through svPutLogicArrElemVec32  
t0089 - ??? through svPutLogicArrElem1Vec32  
t0090 - ??? through svPutLogicArrElem2Vec32   
t0091 - ??? through svPutLogicArrElem3Vec32  
t0092 - get element value of bit [31:0] 1D-array through svGetBitArrElemVec32   
t0093 - get element value of bit [31:0] 1D-array through svGetBitArrElem1Vec32  
t0094 - get element value of bit [31:0] 2D-array through svGetBitArrElem2Vec32  
t0095 - get element value of bit [31:0] 3D-array through svGetBitArrElem3Vec32  
t0096 - get element value of logic [31:0] 1D-array through svGetLogicArrElemVec32 (doesnt work in Questa)     
t0097 - get element value of logic [31:0] 1D-array through svGetLogicArrElem1Vec32 (doesnt work in Questa)   
t0098 - get element value of logic [31:0] 2D-array through svGetLogicArrElem2Vec32 (doesnt work in Questa)   
t0099 - get element value of logic [31:0] 3D-array through svGetLogicArrElem3Vec32 (doesnt work in Questa)   
t0100 - ??? through svScope  
t0101 - ??? through svOpenArrayHandle   
t0102 - ??? through svGetBitselBit   
t0103 - ??? through svGetBitselLogic   
t0104 - ??? through svGetPartselBit   
t0105 - ??? through svGetPartselLogic   
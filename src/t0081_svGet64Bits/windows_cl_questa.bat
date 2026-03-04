set MODEL_TECH=C:/questasim64_2024.1
cl /LD function.c /I "%MODEL_TECH%\include" /link /LIBPATH:%MODEL_TECH%/win64 mtipli.lib /EXPORT:svGet64BitsFunction  /OUT:function.dll
vlib work
vlog t0081_svGet64Bits.sv
vsim -c top -sv_lib function -do "run -all; quit"
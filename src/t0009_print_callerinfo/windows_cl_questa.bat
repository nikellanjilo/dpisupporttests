set MODEL_TECH=C:/questasim64_2024.1
cl /LD print_callerinfo.c /I "%MODEL_TECH%\include" /link /LIBPATH:%MODEL_TECH%/win64 mtipli.lib /EXPORT:print_callerinfo  /OUT:print_callerinfo.dll
vlib work
vlog t0009_print_callerinfo.sv
vsim -c top -sv_lib print_callerinfo -do "run -all; quit"
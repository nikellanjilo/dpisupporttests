set MODEL_TECH=C:/questasim64_2024.1
cl /LD print_scopename.c /I "%MODEL_TECH%\include" /link /LIBPATH:%MODEL_TECH%/win64 mtipli.lib /EXPORT:print_scopename  /OUT:print_scopename.dll
vlib work
vlog top.sv
vsim -c top -sv_lib print_scopename -do "run -all; quit"
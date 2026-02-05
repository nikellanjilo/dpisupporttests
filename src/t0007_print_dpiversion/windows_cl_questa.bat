set MODEL_TECH=C:/questasim64_2024.1
cl /LD print_dpiversion.c /I "%MODEL_TECH%\include" /link /LIBPATH:%MODEL_TECH%/win64 mtipli.lib /EXPORT:print_dpiversion  /OUT:print_dpiversion.dll
vlib work
vlog top.sv
vsim -c top -sv_lib print_dpiversion -do "run -all; quit"
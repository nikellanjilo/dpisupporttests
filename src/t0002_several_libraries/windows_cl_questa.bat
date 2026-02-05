cl /LD function1.c /link /EXPORT:myFunction1 /OUT:myFunction1.dll
cl /LD function2.c /link /EXPORT:myFunction2 /OUT:myFunction2.dll
cl /LD function3.c /link /EXPORT:myFunction3 /OUT:myFunction3.dll
vlib work
vlog top.sv
vsim -c top -sv_lib myFunction1 -sv_lib myFunction2 -sv_lib myFunction3 -do "run -all; quit"
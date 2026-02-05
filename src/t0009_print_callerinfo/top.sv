/*
-- NEED RESULT: Called from top.sv:8 (scope emxsimulator)
*/
module top;
  import "DPI-C" function string print_callerinfo();

  initial
    $display(print_callerinfo());
	
endmodule
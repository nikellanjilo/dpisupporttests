/*
-- NEED RESULT: DPI scope: top
*/
module top;
  import "DPI-C" function string print_scopename();

  initial
    $display(print_scopename());
	
endmodule
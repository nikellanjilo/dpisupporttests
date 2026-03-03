// Questa выводит так, в нашем случае нужно выводить 1800-2017
/*
-- NEED RESULT: 1800-2008
*/
module top;
  import "DPI-C" function string print_dpiversion();

  initial
    $display(print_dpiversion());
	
endmodule
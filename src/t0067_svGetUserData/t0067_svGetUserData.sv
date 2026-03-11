/* 
-- NEED RESULT: counter = 1
-- NEED RESULT: counter = 2
-- NEED RESULT: counter = 3
*/

module top;

  import "DPI-C" context function void init_data();
  import "DPI-C" context function int get_counter();

  initial begin
    init_data();
    $display("counter = %0d", get_counter());
    $display("counter = %0d", get_counter());
    $display("counter = %0d", get_counter());
    $finish;
  end

endmodule
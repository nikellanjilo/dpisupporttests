/*
-- NEED RESULT: dpi_add(2,3) = 5
*/

module top;
  import "DPI-C" function int dpi_add(input int a, input int b);

  initial begin
    int r = dpi_add(2, 3);
    $display("dpi_add(2,3) = %0d", r);
    $finish;
  end
endmodule

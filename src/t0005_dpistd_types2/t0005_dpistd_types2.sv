/*
-- NEED RESULT: dpi_to_int(000000a5) = 165
*/
module top;
  import "DPI-C" function int dpi_to_int(input bit [31:0] a);

  initial begin
    bit [31:0] x = 32'h0000_00A5;
    int r = dpi_to_int(x);
    $display("dpi_to_int(%h) = %0d", x, r);
    $finish;
  end
endmodule

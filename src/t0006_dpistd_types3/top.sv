/*
-- NEED RESULT: dpi_to_longint(1122334455667788) = 1234605616436508552
*/
module top;
  import "DPI-C" function longint dpi_to_longint(input bit [63:0] a);

  initial begin
    bit [63:0] x = 64'h1122_3344_5566_7788;
    longint r = dpi_to_longint(x);
    $display("dpi_to_longint(%h) = %0d", x, r);
    $finish;
  end
endmodule
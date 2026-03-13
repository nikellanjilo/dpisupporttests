/* 
-- NEED RESULT: SV: data = deadbeef
-- NEED RESULT: SV: bit[4] from C = 0
*/

module top;

   import "DPI-C" function int svGetSelectBitFunction(input bit [31:0] data);

  bit [31:0] data = 32'hDEADBEEF;

  initial begin
    $display("SV: data = %h", data);
    $display("SV: bit[4] from C = %0d", svGetSelectBitFunction(data));
    $finish;
  end
endmodule
/* 
-- NEED RESULT: SV: data = deadbeef
-- NEED RESULT: SV: bits[7:0] from C = 000000ef
*/

module top;

 import "DPI-C" function int svGetPartselBitFunction(input bit [31:0] data);

  bit [31:0] data = 32'hDEADBEEF;

  initial begin
    $display("SV: data = %h", data);
    $display("SV: bits[7:0] from C = %h", svGetPartselBitFunction(data));
    $finish;
  end

endmodule
/* 
-- NEED RESULT: SV: data = deadbeef
*/

module top;

  import "DPI-C" function int svGetBitVec32Function(input bit [31:0] data);

  bit [31:0] data = 32'hDEADBEEF;

  initial begin
    $display("SV: data = %h", data);
    $display("SV: C returned = %h", svGetBitVec32Function(data));
    $finish;
  end
endmodule
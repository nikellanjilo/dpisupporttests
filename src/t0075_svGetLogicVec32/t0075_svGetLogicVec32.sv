/* 
-- NEED RESULT: SV: data = deadbeef
-- NEED RESULT: SV: C returned = deadbeef
*/

module top;

  import "DPI-C" function int svGetLogicVec32Function(input logic [31:0] data);

  logic [31:0] data = 32'hDEADBEEF;

  initial begin
    $display("SV: data = %h", data);
    $display("SV: C returned = %h", svGetLogicVec32Function(data));
    $finish;
  end
endmodule
/* 
-- NEED RESULT: SV: data = deadbeef
-- NEED RESULT: SV: bit 4 from C = 0
*/

module top;

 import "DPI-C" function int svGetBitselLogicFunction(input logic [31:0] data);

  logic [31:0] data = 32'hDEADBEEF;

  initial begin
    $display("SV: data = %h", data);
    $display("SV: bit 4 from C = %0d", svGetBitselLogicFunction(data));
    $finish;
  end

endmodule
/* 
-- NEED RESULT: SV: size = 32 bytes
*/

module top;

  import "DPI-C" function int svSizeOfLogicPackedArrFunction(int width);

  logic [127:0] data;

  initial begin
    $display("SV: size = %0d bytes", svSizeOfLogicPackedArrFunction($bits(data)));
    $finish;
  end
endmodule
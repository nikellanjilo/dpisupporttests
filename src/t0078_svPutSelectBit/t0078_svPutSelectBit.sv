/* 
-- NEED RESULT: data = 00000010
*/

module top;

  import "DPI-C" function void svPutSelectBitFunction(inout bit [31:0] data);

  bit [31:0] data = 32'h00000000;

  initial begin
    svPutSelectBitFunction(data);
    $display("SV: data = %h", data);
    $finish;
  end
endmodule
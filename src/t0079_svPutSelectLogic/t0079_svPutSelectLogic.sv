/* 
-- NEED RESULT: data = 00000010
*/

module top;

  import "DPI-C" function void svPutSelectLogicFunction(inout logic [31:0] data);

  logic [31:0] data = 32'h0;

  initial begin
    svPutSelectLogicFunction(data);
    $display("SV: data = %h", data);
    $finish;
  end
endmodule
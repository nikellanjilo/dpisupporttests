/* 
-- NEED RESULT: SV: data = deadbeef
*/

module top;

  import "DPI-C" function void svPutLogicVec32Function(output logic [31:0] data);

  logic [31:0] data;

  initial begin
    svPutLogicVec32Function(data);
    $display("SV: data = %h", data);
    $finish;
  end
endmodule
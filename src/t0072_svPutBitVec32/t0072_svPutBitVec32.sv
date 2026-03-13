/* 
-- NEED RESULT: SV: data = deadbeef
*/

module top;

  import "DPI-C" function void svPutBitVec32Function(output bit [31:0] data);

  bit [31:0] data;

  initial 
  begin
    svPutBitVec32Function(data);
    $display("SV: data = %h", data);
    $finish;
  end
endmodule
/* 
-- NEED RESULT: SV: mem[2] = deadbeef
-- NEED RESULT: SV: C returned = deadbeef
*/

module top;

  import "DPI-C" function int svGetBitArrElem3Vec32Function(input bit [31:0] mem [][][]);

  bit [31:0] mem [0:3][3:0][1:0];

  initial begin
    mem[2][1][0] = 32'hDEADBEEF;

    $display("SV: mem[2] = %h", mem[2][1][0]);
    $display("SV: C returned = %h", svGetBitArrElem3Vec32Function(mem));
    $finish;
  end

endmodule
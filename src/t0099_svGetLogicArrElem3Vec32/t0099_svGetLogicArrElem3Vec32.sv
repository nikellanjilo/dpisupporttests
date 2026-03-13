/* 
-- NEED RESULT: SV: mem[2] = deadbeef
-- NEED RESULT: SV: C returned = deadbeef
*/

module top;

  import "DPI-C" function int svGetLogicArrElem3Vec32Function(input logic [31:0] mem [][][]);

  logic [31:0] mem [0:3][2:0][1:0];

  initial begin
    mem[2][1][0] = 32'hDEADBEEF;

    $display("SV: mem[2] = %h", mem[2][1][0]);
    $display("SV: C returned = %h", svGetLogicArrElem3Vec32Function(mem));

    $finish;
  end

endmodule
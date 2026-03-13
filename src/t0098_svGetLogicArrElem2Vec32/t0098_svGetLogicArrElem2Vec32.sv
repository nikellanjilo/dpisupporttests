/* 
-- NEED RESULT: SV: mem[2] = deadbeef
-- NEED RESULT: SV: C returned = deadbeef
*/

module top;

  import "DPI-C" function int svGetLogicArrElem2Vec32Function(input logic [31:0] mem [][]);

  logic [31:0] mem [0:3][2];

  initial begin
    mem[2][1] = 32'hDEADBEEF;

    $display("SV: mem[2] = %h", mem[2][1]);
    $display("SV: C returned = %h", svGetLogicArrElem2Vec32Function(mem));

    $finish;
  end

endmodule
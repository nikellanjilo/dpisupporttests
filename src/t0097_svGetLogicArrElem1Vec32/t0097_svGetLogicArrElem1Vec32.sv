/* 
-- NEED RESULT: SV: mem[2] = deadbeef
-- NEED RESULT: SV: C returned = deadbeef
*/

module top;

  import "DPI-C" function int svGetLogicArrElem1Vec32Function(input logic [31:0] mem []);

  logic [31:0] mem [0:3];

  initial begin
    mem[0] = 32'hDEADBEEF;
    mem[1] = 32'hDEADBEEF;
    mem[2] = 32'hDEADBEEF;
    mem[3] = 32'hDEADBEEF;

    $display("SV: mem[2] = %h", mem[2]);
    $display("SV: C returned = %h", svGetLogicArrElem1Vec32Function(mem));

    $finish;
  end

endmodule
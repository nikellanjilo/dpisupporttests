/* 
-- NEED RESULT: SV: mem[2] = deadbeef
-- NEED RESULT: SV: C returned = deadbeef
*/

module top;

  import "DPI-C" function int svGetBitArrElemVec32Function(input bit [31:0] mem []);

  bit [31:0] mem [0:3];

  initial begin
    mem[0] = 32'h11111111;
    mem[1] = 32'h22222222;
    mem[2] = 32'hDEADBEEF;
    mem[3] = 32'h44444444;

    $display("SV: mem[2] = %h", mem[2]);
    $display("SV: C returned = %h", svGetBitArrElemVec32Function(mem));
    $finish;
  end

endmodule
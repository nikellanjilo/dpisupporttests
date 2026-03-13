/* 
-- NEED RESULT: Before = 12345678
-- NEED RESULT: After  = 1234aa78
*/

module top;
	import "DPI-C" function void svPutBitArrElemVec32Function(inout  bit [31:0] mem [0:3]);
	
	bit [31:0] mem [0:3];

	initial
	begin
		mem[0] = 32'h00000001;
		mem[1] = 32'h00000001;
		mem[2] = 32'h00000001;
		mem[3] = 32'h00000001;
		svPutBitArrElemVec32Function(mem);
		#1;
		$display("mem[0] = %h", mem[0]);
		$display("mem[1] = %h", mem[1]);
		$display("mem[2] = %h", mem[2]);
		$display("mem[3] = %h", mem[3]);
	end
	
endmodule
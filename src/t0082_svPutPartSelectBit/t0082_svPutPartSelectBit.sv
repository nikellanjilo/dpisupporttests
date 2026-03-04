/* 
-- NEED RESULT: value = 00000000
-- NEED RESULT: value = 0000ab00
*/

module top;
	import "DPI-C" function void svPutPartSelectBitFunction(inout bit [31:0] data);
	bit [31:0] value;

	initial 
	begin
		value = 32'h0;
		$display("value = %h", value);
		svPutPartSelectBitFunction(value);
		$display("value = %h", value);
	end
endmodule
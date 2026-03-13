/* 
-- NEED RESULT: Before = 12345678
-- NEED RESULT: After  = 1234aa78
*/

module top;
	import "DPI-C" function void svPutPartSelectLogicFunction(inout logic [31:0] data);
	
	logic [31:0] value = 32'h12345678;

	initial
	begin
		$display("Before = %h", value);
		svPutPartSelectLogicFunction(value);
		$display("After  = %h", value);
		$finish;
	end
	
endmodule
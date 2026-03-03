/*
-- NEED RESULT: value[0] = 0x00
-- NEED RESULT: value[1] = 0x10
-- NEED RESULT: value[2] = 0x11
-- NEED RESULT: value[3] = 0x00
-- NEED RESULT: value[4] = 0x00
*/

module top;
	import "DPI-C" function string getArrayElemPtrFunction(input byte unsigned data [], int index);
	
	byte unsigned value [7:0];
	
	initial
	begin
		value[0] = 8'h00;
		value[1] = 8'h10;
		value[2] = 8'h11;
		value[3] = 8'h00;
		value[4] = 8'h00;
		$display("value[0] = ", getArrayElemPtrFunction(value, 0));
		$display("value[1] = ", getArrayElemPtrFunction(value, 1));
		$display("value[2] = ", getArrayElemPtrFunction(value, 2));
		$display("value[3] = ", getArrayElemPtrFunction(value, 3));
		$display("value[4] = ", getArrayElemPtrFunction(value, 4));
	end
endmodule
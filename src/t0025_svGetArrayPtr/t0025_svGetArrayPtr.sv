/*
-- NEED RESULT: Byte value = 0xFA
*/

module top;
	import "DPI-C" function string getArrayPtrFunction(input byte data []);
	
	byte value [0:0];
	
	initial
	begin
		value[0] = 8'hFA;
		$display(getArrayPtrFunction(value));
	end
endmodule
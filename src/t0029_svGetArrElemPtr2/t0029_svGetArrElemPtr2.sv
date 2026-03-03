/*
-- NEED RESULT: value[0][1] = 0x00
-- NEED RESULT: value[0][2] = 0x10
-- NEED RESULT: value[1][1] = 0x11
-- NEED RESULT: value[1][2] = 0x00
-- NEED RESULT: value[2][1] = 0x00
-- NEED RESULT: value[2][2] = 0x00
*/

module top;
	import "DPI-C" function string getArrayElemPtr2Function(input byte unsigned data [][], int index, int index2);
	
	byte unsigned value [7:0] [2:1];
	
	initial
	begin
		value[0][1] = 8'h00;
		value[0][2] = 8'h10;
		value[1][1] = 8'h11;
		value[1][2] = 8'h00;
		value[2][1] = 8'h00;
		$display("value[0][1] = ", getArrayElemPtr2Function(value, 0, 1));
		$display("value[0][2] = ", getArrayElemPtr2Function(value, 0, 2));
		$display("value[1][1] = ", getArrayElemPtr2Function(value, 1, 1));
		$display("value[1][2] = ", getArrayElemPtr2Function(value, 1, 2));
		$display("value[2][1] = ", getArrayElemPtr2Function(value, 2, 1));
		$display("value[2][2] = ", getArrayElemPtr2Function(value, 2, 2));
	end
endmodule
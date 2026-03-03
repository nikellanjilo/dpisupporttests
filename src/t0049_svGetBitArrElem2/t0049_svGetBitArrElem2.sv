/*
-- NEED RESULT: arr[1][2] = 0xaf
-- NEED RESULT: arr[6][4] = 0x1a
*/

module top;
	import "DPI-C" function byte unsigned svGetBitArrElem2Function(input bit [7:0] data[][], input int index, input int index2);

	bit [7:0] arr[0:7][0:4];

	initial 
	begin
		arr[1][2] = 8'hAF;
		arr[6][4] = 8'h1A;

		$display("arr[1][2] = 0x%02h", svGetBitArrElem2Function(arr, 1, 2));
		$display("arr[6][4] = 0x%02h", svGetBitArrElem2Function(arr, 6, 4));
	end
	
endmodule
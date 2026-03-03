/*
-- NEED RESULT: arr[1][2][0] = 0xaf
-- NEED RESULT: arr[6][4][0] = 0x1a
*/

module top;
	import "DPI-C" function byte unsigned svGetBitArrElem3Function(input bit [7:0] data[][][], input int index, input int index2, input int index3);

	bit [7:0] arr[0:7][0:4][0:0];

	initial 
	begin
		arr[1][2][0] = 8'hAF;
		arr[6][4][0] = 8'h1A;

		$display("arr[1][2][0] = 0x%02h", svGetBitArrElem3Function(arr, 1, 2, 0));
		$display("arr[6][4][0] = 0x%02h", svGetBitArrElem3Function(arr, 6, 4, 0));
	end
	
endmodule
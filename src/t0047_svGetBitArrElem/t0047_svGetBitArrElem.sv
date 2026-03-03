/*
-- NEED RESULT: arr[1] = 0xaf
-- NEED RESULT: arr[6] = 0x1a
*/

module top;
	import "DPI-C" function byte unsigned svGetBitArrElemFunction(input bit [7:0] data[], input int index);

	bit [7:0] arr[0:7];

	initial 
	begin
		arr[1] = 8'hAF;
		arr[6] = 8'h1A;

		$display("arr[1] = 0x%02h", svGetBitArrElemFunction(arr, 1));
		$display("arr[6] = 0x%02h", svGetBitArrElemFunction(arr, 6));
	end
	
endmodule
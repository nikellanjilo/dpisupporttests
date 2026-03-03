/*
-- NEED RESULT: arr[2][2] = 0xf0
-- NEED RESULT: arr[5][2] = 0x0f
*/

module top;
	import "DPI-C" function byte unsigned svGetLogicArrElem2Function(input logic [7:0] data[][], input int index, input int index2);

	logic [7:0] arr[0:7][6:2];

	initial
	begin
		arr[2][2] = 8'hF0;
		arr[5][2] = 8'h0F;

		$display("arr[2][2] = 0x%02h", svGetLogicArrElem2Function(arr, 2, 2));
		$display("arr[5][2] = 0x%02h", svGetLogicArrElem2Function(arr, 5, 2));
	end
	
endmodule
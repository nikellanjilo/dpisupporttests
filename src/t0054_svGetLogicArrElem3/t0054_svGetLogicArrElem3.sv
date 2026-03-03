/*
-- NEED RESULT: arr[2][2][0] = 0xf0
-- NEED RESULT: arr[5][2][0] = 0x0f
*/

module top;
	import "DPI-C" function byte unsigned svGetLogicArrElem3Function(input logic [7:0] data[][][], input int index, input int index2, input int index3);

	logic [7:0] arr[0:7][6:2][0:1];

	initial
	begin
		arr[2][2][0] = 8'hF0;
		arr[5][2][0] = 8'h0F;

		$display("arr[2][2][0] = 0x%02h", svGetLogicArrElem3Function(arr, 2, 2, 0));
		$display("arr[5][2][0] = 0x%02h", svGetLogicArrElem3Function(arr, 5, 2, 0));
	end
	
endmodule
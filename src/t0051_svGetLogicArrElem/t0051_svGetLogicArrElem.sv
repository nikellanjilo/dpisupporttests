/*
-- NEED RESULT: arr[2] = 0xf0
-- NEED RESULT: arr[5] = 0x0f
*/

module top;
	import "DPI-C" function byte unsigned svGetLogicArrElemFunction(input logic [7:0] data[], input int index);

	logic [7:0] arr[0:7];

	initial
	begin
		arr[2] = 8'hF0;
		arr[5] = 8'h0F;

		$display("arr[2] = 0x%02h", svGetLogicArrElemFunction(arr, 2));
		$display("arr[5] = 0x%02h", svGetLogicArrElemFunction(arr, 5));
	end
	
endmodule
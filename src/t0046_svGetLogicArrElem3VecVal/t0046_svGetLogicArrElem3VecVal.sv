/*
-- NEED RESULT: arr[0][1][2] = 0xfa
-- NEED RESULT: arr2[1][1][3] = 0xab
*/

module top;
	import "DPI-C" function byte svGetLogicArrElem3VecValFunction(input logic [7:0] data[][][], input  int index, input index2, input index3);
	
	logic [7:0] arr[0:7][1:0][3:0];
	logic [7:0] arr2 [0:7][1:0][3:0];
	
	initial 
	begin
		arr[0][1][2] = 8'hFA;
		arr2[1][1][3] = 8'hAB;
		$display("arr[0][1][2] = 0x%02h",svGetLogicArrElem3VecValFunction(arr, 0, 1, 2));
		$display("arr2[1][1][3] = 0x%02h",svGetLogicArrElem3VecValFunction(arr2, 1, 1, 3));
	end
	
endmodule
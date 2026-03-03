/*
-- NEED RESULT: arr[0][1] = 0xfa
-- NEED RESULT: arr2[1][1] = 0xab
*/

module top;
	import "DPI-C" function byte svGetLogicArrElem2VecValFunction(input logic [7:0] data[][], input  int index, input index2);
	
	logic [7:0] arr[0:7][1:0];
	logic [7:0] arr2 [0:7][1:0];
	
	initial 
	begin
		arr[0][1] = 8'hFA;
		arr2[1][1] = 8'hAB;
		$display("arr[0][1] = 0x%02h",svGetLogicArrElem2VecValFunction(arr, 0, 1));
		$display("arr2[1][1] = 0x%02h",svGetLogicArrElem2VecValFunction(arr2, 1, 1));
	end
	
endmodule
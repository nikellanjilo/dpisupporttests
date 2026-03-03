/*
-- NEED RESULT: arr[0] = 0xfa
-- NEED RESULT: arr2[1] = 0xab
*/

module top;
	import "DPI-C" function byte svGetLogicArrElemVecValFunction(input logic [7:0] data[], input  int index);
	
	logic [7:0] arr[0:7];
	logic [7:0] arr2 [0:7];
	
	initial 
	begin
		arr[0] = 8'hFA;
		arr2[1] = 8'hAB;
		$display("arr[0] = 0x%02h",svGetLogicArrElemVecValFunction(arr, 0));
		$display("arr2[1] = 0x%02h",svGetLogicArrElemVecValFunction(arr2, 1));
	end
	
endmodule
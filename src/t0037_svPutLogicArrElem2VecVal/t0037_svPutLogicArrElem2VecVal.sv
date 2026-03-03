/*
-- NEED RESULT: arr[3][1] = 0xfa
-- NEED RESULT: arr2[5][1] = 0xab
-- NEED RESULT: arr2[1][1] = 0x00
*/

module top;
	import "DPI-C" function void svPutLogicArrElem2VecValFunction(output logic [7:0] data[][], input int index, input int index2, input logic[7:0] value);
	logic [7:0] arr[0:7][0:7];
	logic [7:0] arr2 [0:7][0:7];
	initial 
	begin
		svPutLogicArrElem2VecValFunction(arr, 3, 1, 8'hFA);
		svPutLogicArrElem2VecValFunction(arr2, 5, 1, 8'hAB);
		$display("arr[%0d][%0d] = 0x%02h", 3, 1, arr[3][1]);
		$display("arr2[%0d][%0d] = 0x%02h", 5, 1, arr2[5][1]);
		$display("arr2[%0d][%0d] = 0x%02h", 1, 1, arr2[1][1]);
	end
endmodule
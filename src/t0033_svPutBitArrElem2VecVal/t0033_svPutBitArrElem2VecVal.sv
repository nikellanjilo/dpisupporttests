/* 
-- NEED RESULT: arr[3][1] = 0xfa
-- NEED RESULT: arr2[5][1] = 0xab
-- NEED RESULT: arr2[5][1] = 0x00
*/

module top;
	import "DPI-C" function void svPutBitArrElem2VecValFunction(output bit [7:0] data[][], input  int index, input index2, input  byte unsigned value);
	bit [7:0] arr[0:7][0:7];
	bit [7:0] arr2 [0:7][0:7];
	initial 
	begin
		svPutBitArrElem2VecValFunction(arr, 3, 1, 8'hFA);
		svPutBitArrElem2VecValFunction(arr2, 5, 1, 8'hAB);
		$display("arr[%0d][%0d] = 0x%02h", 3, 1, arr[3][1]);
		$display("arr2[%0d][%0d] = 0x%02h", 5, 1, arr2[5][1]);
		$display("arr2[%0d][%0d] = 0x%02h", 5, 1, arr2[1][1]);
	end
endmodule
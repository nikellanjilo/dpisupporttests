/* 
-- NEED RESULT: arr[3][1][0] = 0xfa
-- NEED RESULT: arr2[5][1][1] = 0xab
-- NEED RESULT: arr2[5][1][0] = 0x00
*/

module top;
	import "DPI-C" function void svPutBitArrElem3VecValFunction(output bit [7:0] data[][][], input  int index, input index2, int index3, input  byte unsigned value);
	bit [7:0] arr[0:7][0:7][1:0];
	bit [7:0] arr2 [0:7][0:7][1:0];
	initial 
	begin
		svPutBitArrElem3VecValFunction(arr, 3, 1, 0, 8'hFA);
		svPutBitArrElem3VecValFunction(arr2, 5, 1, 1, 8'hAB);
		$display("arr[%0d][%0d][%0d] = 0x%02h", 3, 1, 0, arr[3][1][0]);
		$display("arr2[%0d][%0d][%0d] = 0x%02h", 5, 1, 1, arr2[5][1][1]);
		$display("arr2[%0d][%0d][%0d] = 0x%02h", 5, 1, 0, arr2[1][1][0]);
	end
endmodule
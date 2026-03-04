/* 
-- NEED RESULT: arr[2][0][3] = 1
-- NEED RESULT: arr[5][0][3] = 1
-- NEED RESULT: arr[7][1][3] = 0
*/

module top;
	import "DPI-C" function void svPutBitArrElem3Function(inout bit data[][][], input int index, input int index2, input int index3, input bit value);
	bit arr[0:7][1:0][3:1];

	initial 
	begin
		svPutBitArrElem3Function(arr, 2, 0, 3, 1);
		svPutBitArrElem3Function(arr, 5, 0, 3, 1);
	
		$display("arr[%0d][%0d][%0d] = %0d", 2, 0, 3, arr[2][0][3]);
		$display("arr[%0d][%0d][%0d] = %0d", 5, 0, 3, arr[2][0][3]);
		$display("arr[%0d][%0d][%0d] = %0d", 7, 1, 3, arr[7][1][3]);
	end
	
endmodule
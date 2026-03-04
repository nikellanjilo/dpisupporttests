/* 
-- NEED RESULT: arr[2][0] = 1
-- NEED RESULT: arr[5][0] = 1
-- NEED RESULT: arr[7][1] = 0
*/

module top;
	import "DPI-C" function void svPutBitArrElem2Function(inout bit data[][], input int index, input int index2, input bit value);
	bit arr[0:7][1:0];

	initial 
	begin
		svPutBitArrElem2Function(arr, 2, 0, 1);
		svPutBitArrElem2Function(arr, 5, 0, 1);
	
		$display("arr[%0d][%0d] = %0d", 2, 0, arr[2][0]);
		$display("arr[%0d][%0d] = %0d", 5, 0, arr[2][0]);
		$display("arr[%0d][%0d] = %0d", 7, 1, arr[7][1]);
	end
	
endmodule
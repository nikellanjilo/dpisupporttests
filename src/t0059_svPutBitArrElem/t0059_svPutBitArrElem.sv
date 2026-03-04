/*
-- NEED RESULT: arr[0] = 0
-- NEED RESULT: arr[1] = 0
-- NEED RESULT: arr[2] = 1
-- NEED RESULT: arr[3] = 0
-- NEED RESULT: arr[4] = 0
-- NEED RESULT: arr[5] = 1
-- NEED RESULT: arr[6] = 0
-- NEED RESULT: arr[7] = 0
*/

module top;
	import "DPI-C" function void svPutBitArrElemFunction(inout bit data[], input int index, input bit value);
	bit arr[0:7];

	initial 
	begin
		svPutBitArrElemFunction(arr, 2, 1);
		svPutBitArrElemFunction(arr, 5, 1);
	
		foreach (arr[i])
			$display("arr[%0d] = %0d", i, arr[i]);
	end
	
endmodule
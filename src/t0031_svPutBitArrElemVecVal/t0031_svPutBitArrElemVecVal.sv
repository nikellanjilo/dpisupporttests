/*
-- NEED RESULT: arr[0] = 0x00
-- NEED RESULT: arr[1] = 0x00
-- NEED RESULT: arr[2] = 0x00
-- NEED RESULT: arr[3] = 0xfa
-- NEED RESULT: arr[4] = 0x00
-- NEED RESULT: arr[5] = 0x00
-- NEED RESULT: arr[6] = 0x00
-- NEED RESULT: arr[7] = 0x00
-- NEED RESULT: arr2[0] = 0x00
-- NEED RESULT: arr2[1] = 0x00
-- NEED RESULT: arr2[2] = 0x00
-- NEED RESULT: arr2[3] = 0x00
-- NEED RESULT: arr2[4] = 0x00
-- NEED RESULT: arr2[5] = 0xab
-- NEED RESULT: arr2[6] = 0x00
-- NEED RESULT: arr2[7] = 0x00
*/

module top;
	import "DPI-C" function void svPutBitArrElemVecValFunction(output bit [7:0] data[], input  int index, input byte unsigned value);
	bit [7:0] arr[0:7];
	bit [7:0] arr2 [0:7];
	initial 
	begin
		svPutBitArrElemVecValFunction(arr, 3, 8'hFA);
		svPutBitArrElemVecValFunction(arr2, 5, 8'hAB);
	
		foreach (arr[i])
			$display("arr[%0d] = 0x%02h", i, arr[i]);
		
		foreach (arr2[i])
			$display("arr2[%0d] = 0x%02h", i, arr2[i]);
	end
endmodule
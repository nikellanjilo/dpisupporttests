/*
-- NEED RESULT: arr[0] = 0xxx
-- NEED RESULT: arr[1] = 0xxx
-- NEED RESULT: arr[2] = 0xxx
-- NEED RESULT: arr[3] = 0xaa
-- NEED RESULT: arr[4] = 0xxx
-- NEED RESULT: arr[5] = 0xxx
-- NEED RESULT: arr[6] = 0x55
-- NEED RESULT: arr[7] = 0xxx
*/

module top;
	import "DPI-C" function void svPutLogicArrElem1Function(inout logic [7:0] data[], input int index, input byte unsigned value);

	logic [7:0] arr[0:7];

	initial
	begin
		svPutLogicArrElem1Function(arr, 3, 8'hAA);
		svPutLogicArrElem1Function(arr, 6, 8'h55);
		
		foreach (arr[i])
			$display("arr[%0d] = 0x%02h", i, arr[i]);
	end
	
endmodule
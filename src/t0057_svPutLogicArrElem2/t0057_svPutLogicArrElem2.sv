/*
-- NEED RESULT: arr[3][4] = 0xaa
-- NEED RESULT: arr[6][4] = 0x55
-- NEED RESULT: arr[4][4] = 0xxx
*/

module top;
	import "DPI-C" function void svPutLogicArrElem2Function(inout logic [7:0] data[][], input int index, input int index1, input byte unsigned value);

	logic [7:0] arr[0:7][4:9];

	initial
	begin
		svPutLogicArrElem2Function(arr, 3, 4, 8'hAA);
		svPutLogicArrElem2Function(arr, 6, 4, 8'h55);
		$display("arr[%0d][%0d] = 0x%02h", 3, 4, arr[3][4]);
		$display("arr[%0d][%0d] = 0x%02h", 6, 4, arr[6][4]);
		$display("arr[%0d][%0d] = 0x%02h", 6, 4, arr[4][4]);
	end
	
endmodule
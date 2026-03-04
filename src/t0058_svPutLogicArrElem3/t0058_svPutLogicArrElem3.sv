/*
-- NEED RESULT: arr[3][4][0] = 0xaa
-- NEED RESULT: arr[6][4][0] = 0x55
-- NEED RESULT: arr[4][4][0] = 0xxx
*/

module top;
	import "DPI-C" function void svPutLogicArrElem3Function(inout logic [7:0] data[][][], input int index, input int index1, input index3, input byte unsigned value);

	logic [7:0] arr[0:7][4:9][1:0];

	initial
	begin
		svPutLogicArrElem3Function(arr, 3, 4, 0, 8'hAA);
		svPutLogicArrElem3Function(arr, 6, 4, 0, 8'h55);
		$display("arr[%0d][%0d][%0d] = 0x%02h", 3, 4, 0, arr[3][4][0]);
		$display("arr[%0d][%0d][%0d] = 0x%02h", 6, 4, 0, arr[6][4][0]);
		$display("arr[%0d][%0d][%0d] = 0x%02h", 6, 4, 0, arr[4][4][0]);
	end
	
endmodule
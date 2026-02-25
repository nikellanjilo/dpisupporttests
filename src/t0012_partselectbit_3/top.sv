/*
-- NEED RESULT: data[          0] = 001
-- NEED RESULT: data[          1] = 000
-- NEED RESULT: data[          2] = 100
-- NEED RESULT: data[          3] = 110
-- NEED RESULT: data[          4] = 111
-- NEED RESULT: data[          5] = 111
-- NEED RESULT: data[          6] = 111
-- NEED RESULT: data[          7] = 111
-- NEED RESULT: data[          8] = 111
-- NEED RESULT: data[          9] = 111
-- NEED RESULT: data[         10] = 111
-- NEED RESULT: data[         11] = 111
-- NEED RESULT: data[         12] = 111
-- NEED RESULT: data[         13] = 111
-- NEED RESULT: data[         14] = 011
-- NEED RESULT: data[         15] = 001
-- NEED RESULT: data[         16] = 000
-- NEED RESULT: data[         17] = 000
-- NEED RESULT: data[         18] = 000
-- NEED RESULT: data[         19] = 000
-- NEED RESULT: data[         20] = 000
-- NEED RESULT: data[         21] = 000
-- NEED RESULT: data[         22] = 000
-- NEED RESULT: data[         23] = 000
-- NEED RESULT: data[         24] = 000
-- NEED RESULT: data[         25] = 000
-- NEED RESULT: data[         26] = 000
-- NEED RESULT: data[         27] = 000
-- NEED RESULT: data[         28] = 000
-- NEED RESULT: data[         29] = 000
-- NEED RESULT: data[         30] = 000
-- NEED RESULT: data[         31] = 000
*/

module top;
	reg [31:0] data;
	import "DPI-C" function int partselectbit(input bit [31:0] a, input int index, input int width);

	initial
	begin
		data = 32'hFFF1;
		for (int i = 0; i < 32; i++)
		begin
			$display("data[%d] = %3b", i, partselectbit(data, i, 3));
		end
	end
endmodule
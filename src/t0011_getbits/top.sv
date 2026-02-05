/*
-- NEED RESULT: data[          0] =           1
-- NEED RESULT: data[          1] =           0
-- NEED RESULT: data[          2] =           0
-- NEED RESULT: data[          3] =           0
-- NEED RESULT: data[          4] =           1
-- NEED RESULT: data[          5] =           1
-- NEED RESULT: data[          6] =           1
-- NEED RESULT: data[          7] =           1
-- NEED RESULT: data[          8] =           1
-- NEED RESULT: data[          9] =           1
-- NEED RESULT: data[         10] =           1
-- NEED RESULT: data[         11] =           1
-- NEED RESULT: data[         12] =           1
-- NEED RESULT: data[         13] =           1
-- NEED RESULT: data[         14] =           1
-- NEED RESULT: data[         15] =           1
-- NEED RESULT: data[         16] =           0
-- NEED RESULT: data[         17] =           0
-- NEED RESULT: data[         18] =           0
-- NEED RESULT: data[         19] =           0
-- NEED RESULT: data[         20] =           0
-- NEED RESULT: data[         21] =           0
-- NEED RESULT: data[         22] =           0
-- NEED RESULT: data[         23] =           0
-- NEED RESULT: data[         24] =           0
-- NEED RESULT: data[         25] =           0
-- NEED RESULT: data[         26] =           0
-- NEED RESULT: data[         27] =           0
-- NEED RESULT: data[         28] =           0
-- NEED RESULT: data[         29] =           0
-- NEED RESULT: data[         30] =           0
-- NEED RESULT: data[         31] =           0
*/

module top;
	reg [31:0] data;
	import "DPI-C" function int getbits(input bit [31:0] a, input int index, input width);

	initial
	begin
		data = 32'hFFF1;
		$display("data[30:0] = %b", getbits(data, 1, 30));
		$display("data[20:0] = %b", getbits(data, 1, 20));
	end
endmodule
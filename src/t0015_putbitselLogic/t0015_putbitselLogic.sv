/*
-- NEED RESULT: data[          0] = 0
-- NEED RESULT: data[          1] = 0
-- NEED RESULT: data[          2] = 0
-- NEED RESULT: data[          3] = 0
-- NEED RESULT: data[          4] = 0
-- NEED RESULT: data[          5] = 0
-- NEED RESULT: data[          6] = 0
-- NEED RESULT: data[          7] = 0
-- NEED RESULT: data[          8] = 0
-- NEED RESULT: data[          9] = 0
-- NEED RESULT: data[         10] = 0
-- NEED RESULT: data[         11] = 0
-- NEED RESULT: data[         12] = 0
-- NEED RESULT: data[         13] = 0
-- NEED RESULT: data[         14] = 0
-- NEED RESULT: data[         15] = 0
-- NEED RESULT: data[         16] = z
-- NEED RESULT: data[         17] = z
-- NEED RESULT: data[         18] = z
-- NEED RESULT: data[         19] = z
-- NEED RESULT: data[         20] = x
-- NEED RESULT: data[         21] = x
-- NEED RESULT: data[         22] = x
-- NEED RESULT: data[         23] = x
-- NEED RESULT: data[         24] = 1
-- NEED RESULT: data[         25] = 1
-- NEED RESULT: data[         26] = 1
-- NEED RESULT: data[         27] = 1
-- NEED RESULT: data[         28] = 0
-- NEED RESULT: data[         29] = 0
-- NEED RESULT: data[         30] = 0
-- NEED RESULT: data[         31] = 1
-- NEED RESULT: data = 10001111xxxxzzzz0000000000000000
*/

module top;
	logic [31:0] data;
	logic [31:0] data2;
	import "DPI-C" function void putbitsellogic(output logic [31:0] b, input int index, logic val);

	initial
	begin
		data = 32'b0000000000000000zzzzxxxx11110001;
		data2 = 0;
		for (int i = 0; i < 32; i++)
		begin
			putbitsellogic(data2, i, data[31 - i]);
			$display("data[%d] = %d", i, data2[i]);
		end
		$display("data = %b", data2);
	end
endmodule
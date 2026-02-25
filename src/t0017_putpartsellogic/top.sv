/*
-- NEED RESULT: data[          0] = 1
-- NEED RESULT: data[          1] = 0
-- NEED RESULT: data[          2] = 0
-- NEED RESULT: data[          3] = 0
-- NEED RESULT: data[          4] = 1
-- NEED RESULT: data[          5] = 1
-- NEED RESULT: data[          6] = 1
-- NEED RESULT: data[          7] = 1
-- NEED RESULT: data[          8] = x
-- NEED RESULT: data[          9] = x
-- NEED RESULT: data[         10] = x
-- NEED RESULT: data[         11] = x
-- NEED RESULT: data[         12] = z
-- NEED RESULT: data[         13] = z
-- NEED RESULT: data[         14] = z
-- NEED RESULT: data[         15] = z
-- NEED RESULT: data[         16] = 0
-- NEED RESULT: data[         17] = 0
-- NEED RESULT: data[         18] = 0
-- NEED RESULT: data[         19] = 0
-- NEED RESULT: data[         20] = 0
-- NEED RESULT: data[         21] = 0
-- NEED RESULT: data[         22] = 0
-- NEED RESULT: data[         23] = 0
-- NEED RESULT: data[         24] = 0
-- NEED RESULT: data[         25] = 0
-- NEED RESULT: data[         26] = 0
-- NEED RESULT: data[         27] = 0
-- NEED RESULT: data[         28] = 0
-- NEED RESULT: data[         29] = 0
-- NEED RESULT: data[         30] = 0
-- NEED RESULT: data[         31] = 0
-- NEED RESULT: data = 0000000000000000zzzzxxxx11110001
*/

module top;
	logic [31:0] data;
	logic [31:0] data2;
	import "DPI-C" function void putpartsellogic(output logic [31:0] b, input int index, logic val, logic width);

	initial
	begin
		data = 32'b0000000000000000zzzzxxxx11110001;
		data2 = 0;
		for (int i = 0; i < 32; i++)
		begin
			putpartsellogic(data2, i, data[i], 1);
			$display("data2[%d] = %d", i, data2[i]);
		end
		$display("data = %b", data2);
	end
endmodule
/*
-- NEED RESULT: data      = 00000000000000001111111111110001
-- NEED RESULT: data_get0 = 00000000000000001111111111110001
-- NEED RESULT: data_get1 = 10000000000000000111111111111000
-- NEED RESULT: data_get2 = 10000000000000000011111111111100
*/

module top;
	reg [31:0] data;
	import "DPI-C" function int svGet64BitsFunction(input bit [31:0] a, input int index);

	initial
	begin
		data = 32'hFFF1;
		$display("data      = %b", data);
		$display("data_get0 = %b", svGet64BitsFunction(data, 0));
		$display("data_get1 = %b", svGet64BitsFunction(data, 1));
		$display("data_get2 = %b", svGet64BitsFunction(data, 2));
	end
endmodule
/*
-- NEED RESULT: data[31:1] = 00000000000000000111111111111000
-- NEED RESULT: data[20:0] = 00000000000000001111111111110001
-- NEED RESULT: data[6:2] = 00000000000000000000000000011100
*/

module top;
	reg [31:0] data;
	import "DPI-C" function int getbits(input bit [31:0] a, input int index, input int width);

	initial
	begin
		data = 32'hFFF1;
		$display("data[31:1] = %b", getbits(data, 1, 30));
		$display("data[20:0] = %b", getbits(data, 0, 20));
		$display("data[6:2] = %b", getbits(data, 2, 5));
	end
endmodule
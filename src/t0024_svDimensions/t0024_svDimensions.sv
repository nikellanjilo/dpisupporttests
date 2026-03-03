/*
-- NEED RESULT:          2
*/

module top;
	import "DPI-C" function int svDimensionsFunction(input int arr[][]);
	
	int my_array[7:5][3:0];
	
	initial
	begin
		$display(svDimensionsFunction(my_array));
	end
endmodule
/*
-- NEED RESULT:         28
*/

module top;
	import "DPI-C" function int svSizeOfArrayFunction(input int arr[]);
	
	int my_array[9:15];
	
	initial
	begin
		$display(svSizeOfArrayFunction(my_array));
	end
endmodule
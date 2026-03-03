/*
-- NEED RESULT:           8
*/

module top;
	import "DPI-C" function int svRightFunction(input int arr[]);
	
	int my_array[5:8];
	
	initial
	begin
		for (int i = 5; i < 9; i++)
		begin
			my_array[i] = i + 100;
		end
		$display(svRightFunction(my_array));
	end
endmodule
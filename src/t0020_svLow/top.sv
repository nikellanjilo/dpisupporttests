/*
-- NEED RESULT:           9
*/

module top;
	import "DPI-C" function int svLowFunction(input int arr[]);
	
	int my_array[15:9];
	
	initial
	begin
		for (int i = 5; i < 9; i++)
		begin
			my_array[i] = i + 100;
		end
		$display(svLowFunction(my_array));
	end
endmodule
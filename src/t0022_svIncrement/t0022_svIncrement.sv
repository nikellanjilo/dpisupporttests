/*
-- NEED RESULT:          -1
*/

module top;
	import "DPI-C" function int svIncrementFunction(input int arr[]);
	
	int my_array[9:15];
	
	initial
	begin
		for (int i = 5; i < 9; i++)
		begin
			my_array[i] = i + 100;
		end
		$display(svIncrementFunction(my_array));
	end
endmodule
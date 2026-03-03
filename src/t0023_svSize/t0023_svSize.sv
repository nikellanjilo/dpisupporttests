/*
-- NEED RESULT:          7
*/

module top;
	import "DPI-C" function int svSizeFunction(input int arr[]);
	
	int my_array[9:15];
	
	initial
	begin
		for (int i = 5; i < 9; i++)
		begin
			my_array[i] = i + 100;
		end
		$display(svSizeFunction(my_array));
	end
endmodule
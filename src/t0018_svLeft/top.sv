/*
-- NEED RESULT:           5
*/

module top;
	import "DPI-C" function int svLeftFunction(input int arr[]);
	
	int my_array[5:8];
	
	initial
	begin
		for (int i = 5; i < 9; i++)
		begin
			my_array[i] = i + 100;
		end
		$display(svLeftFunction(my_array));
	end
endmodule
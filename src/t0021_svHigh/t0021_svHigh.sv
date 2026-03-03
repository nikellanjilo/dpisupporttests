/*
-- NEED RESULT:           15
*/

module top;
	import "DPI-C" function int svHighFunction(input int arr[]);
	
	int my_array[15:9];
	
	initial
	begin
		for (int i = 5; i < 9; i++)
		begin
			my_array[i] = i + 100;
		end
		$display(svHighFunction(my_array));
	end
endmodule
/* 
-- NEED RESULT: scope name = top
*/

module top;
	import "DPI-C" function void svSetScopeFunction();

	export "DPI-C" function sv_print;

	function void sv_print();
		$display("Hello from SystemVerilog!");
	endfunction

	initial begin
		svSetScopeFunction();
	end

endmodule
/* 
-- NEED RESULT: scope name = top
*/

module top;
	import "DPI-C" function string svGetScopeFromNameFunction();

	initial 
	begin
		string s;
		s = svGetScopeFromNameFunction();
		$display("scope name = %s", s);
	end	
endmodule
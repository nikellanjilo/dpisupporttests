/* 
-- NEED RESULT: scope name = top
*/

module top;
	import "DPI-C" function string svGetScopeFunction();

	initial 
	begin
		string s;
		s = svGetScopeFunction();
		$display("scope name = %s", s);
	end	
endmodule
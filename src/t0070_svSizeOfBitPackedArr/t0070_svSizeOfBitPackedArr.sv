/* 
-- NEED RESULT:         128
-- NEED RESULT: Size of packed array = -21083912 bytes
*/

module top;

  import "DPI-C" function int functionsvSizeOfBitPackedArr(bit [127:0] data);

  initial begin
    bit [127:0] data;
    int size;
    size = functionsvSizeOfBitPackedArr($bits(data));
	$display($bits(data));
    $display("Size of packed array = %0d bytes", size);

    $finish;
  end
endmodule
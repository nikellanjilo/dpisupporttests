/*
-- NEED RESULT: arr[3] = 0xfa
-- NEED RESULT: arr2[5] = 0xab
*/

module top;

  import "DPI-C" function byte unsigned svGetBitArrElem1VecValFunction(input bit [7:0] data[], input int index);

  bit [7:0] arr[0:7];

  initial begin
    arr[3] = 8'hFA;
    arr[5] = 8'hAB;
    $display("arr[3] = 0x%02h", svGetBitArrElem1VecValFunction(arr, 3));
    $display("arr[5] = 0x%02h", svGetBitArrElem1VecValFunction(arr, 5));
  end

endmodule
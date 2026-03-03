/*
-- NEED RESULT: arr[3][1] = 0xfa
-- NEED RESULT: arr2[5][1] = 0xab
*/

module top;

  import "DPI-C" function byte unsigned svGetBitArrElem2VecValFunction(input bit [7:0] data[][], input int index, input int index1);

  bit [7:0] arr[0:7][1:0];

  initial begin
    arr[3][1] = 8'hFA;
    arr[5][1] = 8'hAB;
    $display("arr[3][1] = 0x%02h", svGetBitArrElem2VecValFunction(arr, 3, 1));
    $display("arr[5][1] = 0x%02h", svGetBitArrElem2VecValFunction(arr, 5, 1));
  end

endmodule
/*
-- NEED RESULT: arr[3][1][0] = 0xfa
-- NEED RESULT: arr2[5][1][1] = 0xab
*/

module top;

  import "DPI-C" function byte unsigned svGetBitArrElem3VecValFunction(input bit [7:0] data[][][], input int index, input int index1, input int index2);

  bit [7:0] arr[0:7][1:0][1:0];

  initial begin
    arr[3][1][0] = 8'hFA;
    arr[5][1][1] = 8'hAB;
    $display("arr[3][1][0] = 0x%02h", svGetBitArrElem3VecValFunction(arr, 3, 1, 0));
    $display("arr[5][1][1] = 0x%02h", svGetBitArrElem3VecValFunction(arr, 5, 1, 1));
  end

endmodule
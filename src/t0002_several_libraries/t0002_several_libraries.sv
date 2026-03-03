/*
-- NEED RESULT: C-function result is           6
-- NEED RESULT: C-function result is 3.630000
-- NEED RESULT: C-function result is 2.200000
*/

module top;
    import "DPI-C" function int myFunction1(int num1, int num2, int num3);
    import "DPI-C" function real myFunction2(real num1, real num2);
    import "DPI-C" function shortreal myFunction3(shortreal num1, shortreal num2);

    initial
    begin
        $display("C-function result is %d", myFunction1(1,2,3));
        $display("C-function result is %f", myFunction2(1.1,3.3));
        $display("C-function result is %f", myFunction3(4.4,2));
        $finish;
    end
endmodule

/*
-- NEED RESULT: 0x20040180 0x0 
-- NEED RESULT: 0x40180 0x20018002 
-- NEED RESULT: 0x28840581 0x8800401 
-- NEED RESULT: 0x28 0x0 
-- NEED RESULT: 0xa13 0x286 

-- NEED RESULT: 0x70b4c550 0x0 0xd8cdb780 0x0 0x6a7b0430 0x0 0x69c4e0d8 0x0 
-- NEED RESULT: 0x70b4c550 0x0 0xd8cdb780 0x0 0x6100600 0x86300780 0x69c4e0d8 0x0 
-- NEED RESULT: 0x84018016 0x8c01e033 0x71383601 0x21 0x1a 0x0 
*/
module top;
    import "DPI-C" function string compute(int length, logic[127:0] value);

    logic[31:0] x0 = { 8'b_00100000, 8'b_00000100, 8'b_00000001, 8'b_10000000 };
    logic[31:0] x1 = { 8'b_00z00000, 8'b_0000010z, 8'b_z0000001, 8'b_100000z0 };
    logic[31:0] x2 = { 8'b_0010x000, 8'b_x0000100, 8'b_00000x01, 8'b_1000000x };
    logic[7:0] x3 = { 8'b_00101000 };
    logic[11:0] x4 = { 12'b_10x0z0010zx1 };

    logic[127:0] x5 = 128'h_69c4_e0d8_6a7b_0430_d8cd_b780_70b4_c550;
    logic[127:0] x6 = { 32'h_69c4_e0d8, 32'b__zz0000xx_000zx000_000000xx_zz0000000, 32'h_d8cd_b780, 32'h_70b4_c550 };
    logic[69:0] x7 = { 32'h_69c4_e0d8, 32'b__zz0000xx_000zx000_000000xx_zz0000000, 6'b_zx01xz };


    initial
    begin
        $display("%s", compute(1, x0));
        $display("%s", compute(1, x1));
        $display("%s", compute(1, x2));
        $display("%s", compute(1, x3));
        $display("%s", compute(1, x4));

        $display("%s", compute(4, x5));
        $display("%s", compute(4, x6));
        $display("%s", compute(3, x7));
        $finish;
    end
endmodule
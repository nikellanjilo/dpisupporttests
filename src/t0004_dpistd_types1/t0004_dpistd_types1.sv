/*
пример - https://stackoverflow.com/questions/75194453/is-there-any-api-to-convert-svlogicvecval-to-uint-8
H.7.7 - The first element of an array contains the 32 LSBs, next element contains the 32 more significant bits, and so on.
*/
/*
-- NEED RESULT: 0x50 0xc5 0xb4 0x70 0x80 0xb7 0xcd 0xd8 0x30 0x4 0x7b 0x6a 0xd8 0xe0 0xc4 0x69 
*/
module top;
    import "DPI-C" function string compute_logic_vector(bit[127:0] i_value);

    logic [127:0] x = 128'h_69c4_e0d8_6a7b_0430_d8cd_b780_70b4_c550;

    initial
    begin
        $display("%s", compute_logic_vector(x));
        $finish;
    end
endmodule
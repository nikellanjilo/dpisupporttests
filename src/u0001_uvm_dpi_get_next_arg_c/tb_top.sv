`timescale 1ns/1ps

module top;

  import uvm_pkg::*;
  import tb_pkg::*;
  `include "uvm_macros.svh"

  initial begin
    run_test("simple_test");
  end

endmodule
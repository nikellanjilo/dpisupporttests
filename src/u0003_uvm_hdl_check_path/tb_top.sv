`timescale 1ns/1ps

module tb_top;

  import uvm_pkg::*;
  `include "uvm_macros.svh"

  dut d0();

  initial begin
    int ok;
    uvm_hdl_data_t val;

    // ===== CHECK PATH =====
    ok = uvm_hdl_check_path("tb_top.d0.data");

    if (ok)
      $display("Path exists!");
    else begin
      $display("Path NOT found!");
      $finish;
    end

    // ===== DEPOSIT =====
    ok = uvm_hdl_deposit("tb_top.d0.data", 8'hA5);

    if (!ok)
      $display("Deposit failed!");

    #1;

    // ===== READ =====
    ok = uvm_hdl_read("tb_top.d0.data", val);

    if (ok)
      $display("Read value = %h", val);
    else
      $display("Read failed!");

    $finish;
  end

endmodule
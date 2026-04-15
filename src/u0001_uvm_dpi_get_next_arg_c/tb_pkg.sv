package tb_pkg;

  import uvm_pkg::*;
  `include "uvm_macros.svh"

  class simple_test extends uvm_test;
    `uvm_component_utils(simple_test)

    function new(string name = "simple_test", uvm_component parent = null);
      super.new(name, parent);
    endfunction

    task run_phase(uvm_phase phase);
      string arg;
      int idx = 0;

      phase.raise_objection(this);

      `uvm_info("TEST", "Start reading command-line args via uvm_dpi_get_next_arg_c()", UVM_LOW)
	  
      arg = uvm_dpi_get_next_arg_c();
      while (arg != "") begin
        `uvm_info("CMDARG", $sformatf("arg[%0d] = %s", idx, arg), UVM_LOW)
        idx++;
        arg = uvm_dpi_get_next_arg_c();
      end

      `uvm_info("TEST", $sformatf("Done. Total args read = %0d", idx), UVM_LOW)

      phase.drop_objection(this);
    endtask

  endclass

endpackage
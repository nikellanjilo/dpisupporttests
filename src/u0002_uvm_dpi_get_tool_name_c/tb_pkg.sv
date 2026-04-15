package tb_pkg;

  import uvm_pkg::*;
  `include "uvm_macros.svh"

  class simple_test extends uvm_test;
    `uvm_component_utils(simple_test)

    function new(string name = "simple_test", uvm_component parent = null);
      super.new(name, parent);
    endfunction

    task run_phase(uvm_phase phase);
      string tool_name;
      string tool_ver;

      phase.raise_objection(this);

      tool_name = uvm_dpi_get_tool_name();
      tool_ver  = uvm_dpi_get_tool_version();

      `uvm_info("TOOL", $sformatf("Tool name    = %s", tool_name), UVM_LOW)
      `uvm_info("TOOL", $sformatf("Tool version = %s", tool_ver),  UVM_LOW)

      phase.drop_objection(this);
    endtask
  endclass

endpackage
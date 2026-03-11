/* 
-- NEED RESULT: counter = 1
-- NEED RESULT: counter = 2
-- NEED RESULT: counter = 3
*/

module top;

  export "DPI-C" task sv_wait_task;
  import "DPI-C" context task c_worker();

  initial begin
    fork
      begin
        $display("[%0t] before c_worker", $time);
        c_worker();
        $display("[%0t] after c_worker", $time);
      end
    join_none

    #5 disable fork;
    #20 $finish;
  end

  task sv_wait_task();
    $display("[%0t] SV task started", $time);
    #10;
    $display("[%0t] SV task finished", $time);
  endtask

endmodule
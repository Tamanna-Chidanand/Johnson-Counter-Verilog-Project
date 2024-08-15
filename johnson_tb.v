module test_johnson_counter;

  reg clk;
  reg rst;
  wire [3:0] out;

  always begin
    #5 clk = ~clk; // Toggle the clock every 5 time units
  end

  initial begin
    clk = 0;
    rst = 0;
    $dumpfile("johnson_counter.vcd");
    $dumpvars(0, test_johnson_counter);
    $display("\t\tTime  clk rst out");
    $monitor("%d    %b   %b   %b", $time, clk, rst, out);

    // Simulate for 20 time units
    #20 rst = 1; // Assert reset
    #20 rst = 0; // Deassert reset
    #100 $finish; // Finish simulation
  end

  johnson_counter uut (
    .clk(clk),
    .rst(rst),
    .out(out)
  );

endmodule

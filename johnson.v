module johnson_counter (
  input wire clk,  // Clock input
  input wire rst,  // Reset input
  output wire [3:0] out  // 4-bit Johnson counter output
);

  reg [3:0] state;  // 4-bit state register

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      // Reset the state to 4'b0000 when rst is asserted
      state <= 4'b0000;
    end else begin
      // Johnson counter state transitions
      state <= {state[2:0], ~state[3]};  // Shift left, complement MSB
    end
  end

  assign out = state;  // Output the current state

endmodule

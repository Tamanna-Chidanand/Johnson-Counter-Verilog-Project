# Johnson-Counter-Verilog-Project
Johnson Counter Verilog Project
This project implements a 4-bit Johnson counter in Verilog. The Johnson counter, also known as a twisted ring counter, is a type of counter that produces a unique sequence of states based on the inverted output of the last flip-flop.

## Overview

- **Module**: `johnson_counter`
  - **Inputs**:
    - `clk`: Clock signal.
    - `rst`: Reset signal.
  - **Outputs**:
    - `out`: 4-bit output representing the current state of the Johnson counter.

- **Testbench**: `test_johnson_counter`
  - Generates clock and reset signals.
  - Monitors the output of the Johnson counter for verification.

## Features

- **Clock Generation**: The testbench simulates a clock with a period of 10 time units.
- **Reset Functionality**: The counter initializes to `0000` on reset and follows the Johnson counter state transitions.
- **Twisted Counter Behavior**: The counter state is updated based on the complement of the most significant bit (MSB).

## Files

- `johnson.v`: The main Johnson counter module implementation.
- `johnson_tb.v`: The testbench for simulating the Johnson counter.

## Simulation

To run the simulation:

1. **Install a Verilog Simulator**: Ensure you have a Verilog simulator installed (e.g., ModelSim, Icarus Verilog).
  
2. **Compile the Design**:
   ```bash
   iverilog -o johnson_counter.vvp johnson.v johnson_tb.v
3. Run: vvp johnson_counter.vvp

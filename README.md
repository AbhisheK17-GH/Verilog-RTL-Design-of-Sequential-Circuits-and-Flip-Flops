# VLSI Design Internship - Task 3

## Verilog RTL Design of Sequential Circuits and Flip-Flops

## Objective

The objective of this task is to understand sequential logic circuits and implement them using Verilog HDL. This task covers the design, simulation, and verification of flip-flops, registers, and counters using RTL coding and testbenches.

---

## Tools Used

- EDA Playground
- Verilog HDL
- Icarus Verilog Simulator
- EPWave Waveform Viewer
- GitHub

---

# 1. D Flip-Flop

## Description

A D Flip-Flop is a sequential circuit that stores one bit of data. The output Q takes the value of input D on the rising edge of the clock signal.

## Truth Table

| Clock Edge | D | Q(next) |
|------------|---|----------|
| Rising Edge | 0 | 0 |
| Rising Edge | 1 | 1 |

## Verilog Code

```verilog
module d_flipflop(
    input clk,
    input D,
    output reg Q
);

always @(posedge clk)
begin
    Q <= D;
end

endmodule
```

## Waveform

> image attached in the repositry

## Observation

The D Flip-Flop output changes only at the rising edge of the clock and stores the value present at input D.

---

# 2. JK Flip-Flop

## Description

A JK Flip-Flop is a sequential circuit with four operations: hold, reset, set, and toggle.

## Truth Table

| J | K | Q(next) |
|---|---|----------|
| 0 | 0 | No Change |
| 0 | 1 | Reset |
| 1 | 0 | Set |
| 1 | 1 | Toggle |

## Verilog Code

```verilog
module jk_flipflop(
    input clk,
    input J,
    input K,
    output reg Q
);

always @(posedge clk)
begin
    case ({J,K})
        2'b00: Q <= Q;
        2'b01: Q <= 0;
        2'b10: Q <= 1;
        2'b11: Q <= ~Q;
    endcase
end

endmodule
```

## Waveform

> image attached in the repositry.

## Observation

The JK Flip-Flop successfully performed hold, reset, set, and toggle operations according to the input conditions.

---

# 3. 4-Bit Register

## Description

A 4-bit Register stores four bits of data and updates its output on the rising edge of the clock signal.

## Verilog Code

```verilog
module register4(
    input clk,
    input [3:0] D,
    output reg [3:0] Q
);

always @(posedge clk)
begin
    Q <= D;
end

endmodule
```

## Waveform

> image attached in the repositry.

## Observation

The register correctly stored and transferred the 4-bit input data to the output at each clock edge.

---

# 4. 4-Bit Binary Counter

## Description

A 4-bit Binary Counter increments its value by one on every rising edge of the clock signal.

## Expected Count Sequence

| Clock Cycle | Count |
|-------------|--------|
| 0 | 0000 |
| 1 | 0001 |
| 2 | 0010 |
| 3 | 0011 |
| 4 | 0100 |
| 5 | 0101 |
| 6 | 0110 |
| 7 | 0111 |
| 8 | 1000 |
| 9 | 1001 |
| 10 | 1010 |
| 11 | 1011 |
| 12 | 1100 |
| 13 | 1101 |
| 14 | 1110 |
| 15 | 1111 |

## Verilog Code

```verilog
module counter4(
    input clk,
    output reg [3:0] count
);

always @(posedge clk)
begin
    count <= count + 1;
end

endmodule
```

## Waveform

> image attached in the repositry.

## Observation

The 4-Bit Binary Counter successfully incremented its count value by one on every rising edge of the clock signal. The output followed the expected binary counting sequence from `0000` to `1111`.

## Testbench Conclusion

The testbench generated clock pulses and verified the counting sequence during simulation. The waveform confirmed that the counter incremented correctly on every positive clock edge and produced the expected output sequence. Hence, the functionality of the 4-Bit Binary Counter was successfully verified.

---

# Conclusion

In this task, various sequential circuits including a D Flip-Flop, JK Flip-Flop, 4-Bit Register, and 4-Bit Binary Counter were designed, simulated, and verified using Verilog HDL. The generated waveforms matched the expected behavior of each circuit, demonstrating the concepts of sequential logic, data storage, clock-driven operations, and counting mechanisms. This task provided practical experience in RTL design, testbench development, and functional verification of sequential digital circuits.

---

## Author

**Abhishek Kumar Singh**  
B.Tech Electronics Engineering (VLSI Design & Technology)  
Manipal University Jaipur

### Connect with Me

- GitHub: https://github.com/AbhisheK17-GH
- LinkedIn: https://www.linkedin.com/in/abhishek-kumar-singh-38b1143a1/

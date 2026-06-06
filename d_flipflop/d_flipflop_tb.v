`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2026 15:49:37
// Design Name: 
// Module Name: d_flipflop_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module d_flipflop_tb;

    reg clk;
    reg D;
    wire Q;

    // Instantiate the DUT (Device Under Test)
    d_flipflop uut (
        .clk(clk),
        .D(D),
        .Q(Q)
    );

    // Clock generation (10 ns period)
    initial
    begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Apply test vectors
    initial
    begin
        D = 0;
        #10;

        D = 1;
        #10;

        D = 0;
        #10;

        D = 1;
        #10;

        D = 0;
        #10;

        $finish;
    end

    // Monitor signals
    initial
    begin
        $monitor("Time=%0t | clk=%b | D=%b | Q=%b",
                  $time, clk, D, Q);
    end

endmodule
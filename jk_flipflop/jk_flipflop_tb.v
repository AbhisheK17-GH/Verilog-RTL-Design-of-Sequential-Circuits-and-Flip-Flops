`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 15:12:23
// Design Name: 
// Module Name: jk_flipflop_tb
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

module jk_flipflop_tb;

    reg clk;
    reg J;
    reg K;
    wire Q;

    // Instantiate the JK Flip-Flop
    jk_flipflop uut (
        .clk(clk),
        .J(J),
        .K(K),
        .Q(Q)
    );

    // Clock Generation (10 ns period)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Test Cases
    initial begin
        // Initialize inputs
        J = 0; K = 0;

        #10;
        J = 0; K = 0;   // No Change

        #10;
        J = 0; K = 1;   // Reset

        #10;
        J = 1; K = 0;   // Set

        #10;
        J = 1; K = 1;   // Toggle

        #10;
        J = 1; K = 1;   // Toggle again

        #10;
        J = 0; K = 0;   // Hold

        #10;
        $finish;
    end

    // Monitor Signals
    initial begin
        $monitor("Time=%0t clk=%b J=%b K=%b Q=%b",
                 $time, clk, J, K, Q);
    end

endmodule

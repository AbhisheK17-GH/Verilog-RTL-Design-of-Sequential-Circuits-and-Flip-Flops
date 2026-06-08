`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2026 15:20:48
// Design Name: 
// Module Name: counter4_tb
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


module counter4_tb;

    reg clk;
    wire [3:0] count;

    // Instantiate DUT
    counter4 uut (
        .clk(clk),
        .count(count)
    );

    // Clock generation (10 ns period)
    always #5 clk = ~clk;

    initial
    begin
        clk = 0;

        // Force an initial value for simulation
        uut.count = 4'b0000;

        #160;
        $finish;
    end

    initial
    begin
        $monitor("Time=%0t clk=%b count=%d (%b)",
                  $time, clk, count, count);
    end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2026 15:08:54
// Design Name: 
// Module Name: register4_tb
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


module register4_tb;

    reg clk;
    reg [3:0] D;
    wire [3:0] Q;

    // Instantiate the DUT (Device Under Test)
    register4 uut (
        .clk(clk),
        .D(D),
        .Q(Q)
    );

    // Clock generation: 10 ns period
    always #5 clk = ~clk;

    initial
    begin
        // Initialize signals
        clk = 0;
        D = 4'b0000;

        // Apply test vectors
        #10 D = 4'b0001;
        #10 D = 4'b0011;
        #10 D = 4'b0111;
        #10 D = 4'b1111;
        #10 D = 4'b1010;

        #20 $finish;
    end

    initial
    begin
        $monitor("Time=%0t | clk=%b | D=%b | Q=%b",
                  $time, clk, D, Q);
    end

endmodule

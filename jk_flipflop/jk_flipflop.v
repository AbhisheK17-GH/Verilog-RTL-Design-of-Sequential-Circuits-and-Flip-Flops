`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 15:11:40
// Design Name: 
// Module Name: jk_flipflop
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


module jk_flipflop(
    input clk,
    input J,
    input K,
    output reg Q
);

always @(posedge clk)
begin
    case ({J,K})
        2'b00: Q <= Q;    // No Change
        2'b01: Q <= 1'b0; // Reset
        2'b10: Q <= 1'b1; // Set
        2'b11: Q <= ~Q;   // Toggle
    endcase
end

endmodule
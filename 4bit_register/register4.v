`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2026 15:07:21
// Design Name: 
// Module Name: register4
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

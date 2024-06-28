`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2024 07:48:53
// Design Name: 
// Module Name: DAC
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


module DAC (
    input clk,
    input rst,
    input [9:0] digital_in,
    output reg [9:0] analog_out
);
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            analog_out <= 0;
        end else begin
            analog_out <= digital_in;  // Simplified DAC model for illustration
        end
    end
endmodule


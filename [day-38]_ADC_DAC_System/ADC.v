`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2024 07:43:26
// Design Name: 
// Module Name: ADC
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


module ADC (
    input clk,
    input rst,
    input [9:0] analog_in,
    output reg [9:0] digital_out
);
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            digital_out <= 0;
        end else begin
            digital_out <= analog_in;  // Simplified ADC model for illustration
        end
    end
endmodule

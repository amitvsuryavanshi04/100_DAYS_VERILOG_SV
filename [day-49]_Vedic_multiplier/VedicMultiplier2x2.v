`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.07.2024 22:30:53
// Design Name: 
// Module Name: VedicMultiplier2x2
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


module VedicMultiplier2x2 (
    input wire [1:0] A, // 2-bit input A
    input wire [1:0] B, // 2-bit input B
    output wire [3:0] P // 4-bit output product
);

wire [3:0] temp;

// Partial product generation
assign temp[0] = A[0] & B[0];
assign temp[1] = (A[1] & B[0]) ^ (A[0] & B[1]);
assign temp[2] = (A[1] & B[0]) & (A[0] & B[1]) ^ (A[1] & B[1]);
assign temp[3] = (A[1] & B[0]) & (A[0] & B[1]) & (A[1] & B[1]);

// Assign the final product
assign P = temp;

endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.07.2024 22:27:11
// Design Name: 
// Module Name: OR_gate_using_decoder
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


module OR_gate_using_decoder (
    input wire A,    // Input A
    input wire B,    // Input B
    output wire Y    // Output Y
);

// Internal wires for the decoder outputs
wire Y0, Y1;

// 2:1 Decoder implementation
assign Y0 = ~A;
assign Y1 = A;

// OR gate implementation using decoder outputs
assign Y = (Y0 & B) | (Y1 & 1);

endmodule


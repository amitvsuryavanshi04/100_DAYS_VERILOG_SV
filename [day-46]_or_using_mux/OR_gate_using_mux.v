`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.07.2024 22:43:01
// Design Name: 
// Module Name: OR_gate_using_mux
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


module OR_gate_using_mux (
    input wire A,    // Input A
    input wire B,    // Input B
    output wire Y    // Output Y
);

// Internal wire for the select line of the MUX
wire select;

// Assign select line to input A
assign select = A;

// Implement the 2:1 MUX
assign Y = (select) ? 1 : B;

endmodule


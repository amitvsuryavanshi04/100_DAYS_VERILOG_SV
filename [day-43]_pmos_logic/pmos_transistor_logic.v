`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2024 21:03:11
// Design Name: 
// Module Name: pmos_transistor_logic
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


module pmos_transistor_logic(
output wire drain,
    input wire gate,
    input wire source
);

    assign drain = ~(gate) ? source : 1'bz;

endmodule
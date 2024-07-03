`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2024 23:36:51
// Design Name: 
// Module Name: doub_edge_ff
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


module doub_edge_ff (
    input clk,
    input d,
    output q
);
    reg q1,q2;
    always @ (posedge clk) begin
    	q1 <= q2^d; 
    end
    
    always @ (negedge clk) begin
    	q2 <= q1^d; 
    end
    
    assign q = q1^q2; 
endmodule

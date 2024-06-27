`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2024 15:39:32
// Design Name: 
// Module Name: L_SR_NOR
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


//design CODE
module L_SR_NOR(q,qb,s,r);
input s,r;
output q,qb;
nor n1(q,s,qb);
nor n2(qb,r,q);
endmodule

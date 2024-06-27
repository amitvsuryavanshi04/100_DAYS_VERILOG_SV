`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2024 15:39:55
// Design Name: 
// Module Name: L_SR_NOR_tb
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


//testbench code 
module L_SR_NOR_tb;
reg s,r;
wire q,qb;
L_SR_NOR uut(.s(s),.r(r),.q(qb));
initial begin
s = 0; r = 1; #10;
s = 1; r = 0; #10;
s = 1; r = 1; #10;
s = 0; r = 0; #10;
$finish;
end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2024 14:22:57
// Design Name: 
// Module Name: siso
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


module siso(
    input clk,
    input Din,
    output Output,o0,o1,o2
    );
   
    reg [3:0]Q;

always @ (posedge clk)
begin
Q <= Q >> 1 ;
Q[3] <= Din;
end
assign Output = Q[0];
  assign o2 = Q[1];
  assign o1 = Q[2];
  assign o0 = Q[3];
endmodule

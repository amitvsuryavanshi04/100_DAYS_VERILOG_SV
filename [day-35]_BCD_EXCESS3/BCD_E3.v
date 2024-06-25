`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 25.06.2024 07:55:50
// Design Name: BINARY CODED DECIMAL TO EXCESS 3 CONVERSION 
// Module Name: BCD_E3
// Description: performs binary coded decimal adddition 
// 
//////////////////////////////////////////////////////////////////////////////////

 // Day-35 BCD TO EXCESS 3 CODE 
 module BCD_E3(input [3:0] b, output [3:0] e);
assign e = b + 4'b0011;
endmodule

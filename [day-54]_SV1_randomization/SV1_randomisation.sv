`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2024 23:15:12
// Design Name: 
// Module Name: SV1_randomisation
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

//randomization uses functions 
//namely rand and randc keywords
class SV1_randomisation ;
//it is the process where we can multiple times generate random
//input values
 rand bit[3:0] a;
 rand bit [3:0] b;
//using rand gives repeated outputs 
//randc bit[3:0] a;
//randc bit[3:0] b;
//the above two lines can give values without repition after completing all the values
endclass 

module top;
SV1_randomisation c;
initial begin
 c = new();
 repeat(10)begin
 c.randomize();
 $display("a=%d b=%d",c.a,c.b);
 end
 end
 endmodule
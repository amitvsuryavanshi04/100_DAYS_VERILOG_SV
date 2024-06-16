`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2024 14:26:58
// Design Name: 
// Module Name: siso_tb
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


module siso_tb();
      
reg clk, Din;
wire Output,o0,o1,o2;
siso siso1(clk, Din, Output,o0,o1,o2);

initial begin
clk = 1'b0;
 repeat(10)#5 clk = ~clk;
end

initial begin
Din=1'b0;
#10 Din=1'b1;
#10 Din=1'b0;
#10 Din=1'b1;
#10 Din=1'b0;
end
endmodule
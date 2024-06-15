`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 15.06.2024 14:26:58
// Design Name: Testbench code for Serial In serial out 
// Module Name: siso_tb 
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

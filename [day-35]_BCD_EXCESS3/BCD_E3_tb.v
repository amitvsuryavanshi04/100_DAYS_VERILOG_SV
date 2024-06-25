`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 25.06.2024 07:59:50
// Design Name: BINARY CODED DECIMAL TO EXCESS 3 CONVERSION 
// Module Name: BCD_E3_tb
// Description: testbench code for BCD TO E3  
// 
//////////////////////////////////////////////////////////////////////////////////


//testbench code 
module BCD_E3_tb;
reg [3:0]b;
wire [3:0]e;

BCD_E3 uut (.b(b),.e(e));
initial begin 
b=4'b0000 ; #10;
b=4'b0001 ; #10;
b=4'b0010 ; #10;
b=4'b0011 ; #10;
b=4'b0100 ; #10;
b=4'b0101 ; #10;
b=4'b0110 ; #10;
b=4'b0111 ; #10;
b=4'b1000 ; #10;
b=4'b1001 ; #10;
$finish;
end
endmodule


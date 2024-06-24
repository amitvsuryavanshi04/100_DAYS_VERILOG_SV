`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 24.06.2024 10:21:06
// Design Name: BINARY CODED DECIMAL ADDITION  testbench code 
// Module Name: BCD_addition_tb
// Description: input value given as test values 
// 
//////////////////////////////////////////////////////////////////////////////////





module BCD_addition_tb;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire carry;

BCD_addition uut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));

initial begin 
a = 4'b0100; b = 4'b0011; cin=0; #10;
a = 4'b1001; b = 4'b0101; cin=0; #10;

$finish;
end
endmodule 


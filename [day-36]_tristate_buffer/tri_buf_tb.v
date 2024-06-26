`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2024 22:02:56
// Design Name: 
// Module Name: tri_buf_tb
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
module tri_buf_tb;
reg a,en;
wire b;
tri_buf uut (.a(a),.b(b),.en(en));
initial begin 
en = 0; a = 1; #10;
en = 1; a = 0; #10;
en = 1; a = 1; #10;
en = 1; a = 0; #10;
$finish;
end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2024 19:55:09
// Design Name: 
// Module Name: sol_bef_con
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

class sol_bef_con;
    rand bit a;
    rand bit [2:0] b;
    constraint c1 {(a==1)->(b==1);
            solve a before b;
            }
    endclass
 
 module top;
 sol_bef_con c;
 initial begin
 c=new();
 repeat(10) begin
 c.randomize();
 $display("a=%d b=1%d",c.a,c.b);
 end
 end
endmodule 
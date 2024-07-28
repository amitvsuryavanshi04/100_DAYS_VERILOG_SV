`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2024 19:48:24
// Design Name: 
// Module Name: insi_rand
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


class inis_rand;
    randc bit[3:0] a;
    endclass
   
module top;
 inis_rand c;
 
    initial begin
     c=new();
     repeat(10)begin
     c.randomize();
       if(c.a inside {[0:2]}) //usage of inside keyword to generate values within range 0-2
      $display("a=%d",c.a);
      end
     end
   endmodule


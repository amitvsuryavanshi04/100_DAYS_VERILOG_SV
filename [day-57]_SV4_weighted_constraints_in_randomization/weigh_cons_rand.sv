`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2024 23:51:12
// Design Name: 
// Module Name: weigh_cons_rand
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


class SV4;
    rand bit [3:0] a;
    
    constraint  c1{ a dist{5:=3, 2:=6};};
endclass
   
module top;
    SV4 s;
    initial begin
        s = new();
        repeat(10) begin
        s.randomize();
        $display("a=%d",s.a);
        end
      end
endmodule

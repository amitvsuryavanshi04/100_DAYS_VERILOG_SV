`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2024 22:43:37
// Design Name: 
// Module Name: SV2
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


class SV2;
rand bit[3:0] a;
rand bit[3:0] b;
//function for pre randmozie
/*function void pre_randomize;
    a.rand_mode(0);
    a =1 ;b=3;
    $display("inside pre randomize");
endfunction */ 
//function for post_randomize 
function void post_randomize;
    //$display("inside post randomize");
    //declare to keep values after randomization also 
    a=1 ; b=3;
    $display("a=%d b=%d",a,b);
endfunction  
endclass

module top;
SV2 c;
initial begin 
c=new();
repeat(10) begin
c.randomize();
$display("a=%d b=%d",c.a,c.b);
end
end
endmodule

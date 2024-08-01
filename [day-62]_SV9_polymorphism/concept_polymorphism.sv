`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2024 22:57:22
// Design Name: 
// Module Name: polym
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

//polymorphism
class parent ;
 
    function void print();
    $display ("we are inside Parent class");
    endfunction
 endclass
 
 class child extends parent;
    
    
    function void print();
       $display("we are inside child class");
       endfunction
   endclass
   
  module top;
    parent p;
    child c;
    initial begin
	p = new();
    c = new();
	p = c;
    p.print();
    c.print();
   end
   endmodule
   //output 1 picutre when virtual function void print(); line is present
   //output 2 when function void print(); line only is present
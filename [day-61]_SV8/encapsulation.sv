`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2024 14:12:03
// Design Name: 
// Module Name: inhe_oop
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2024 23:34:09
// Design Name: 
// Module Name: encap
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


//encapsulation
//accessibility - local and protected
class parent ;
 bit [3:0] a=2;
 bit [3:0] b=3;
 
    function void print();
    $display ("a=%d b=%d",a,b);
    endfunction
 endclass
 
 class child extends parent;
    bit [3:0] c;
    
    function void add();
       c=a+b;
       $display("c=%d",c);
       endfunction
   endclass
   
  module top;
    bit [3:0] d;
    child c;
    initial begin
    c = new();
    c.print();
    c.add();
    d = c.b-c.a;
    $display("d = %d",d);
   end
   endmodule 
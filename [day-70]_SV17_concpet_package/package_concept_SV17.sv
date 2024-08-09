`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2024 07:26:00
// Design Name: 
// Module Name: package_concept
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


//day 70 
package pkg;
   function int add(int a,b);
     return a+b;
   endfunction 
   function void print (int c);
         $display ("Addition is %d",c);
endfunction

endpackage

import pkg::*; //importing package

module top;
 int a=10, b=20;
int c;

initial begin 
 c=add(10,20);
   void'(print(c));
end

endmodule

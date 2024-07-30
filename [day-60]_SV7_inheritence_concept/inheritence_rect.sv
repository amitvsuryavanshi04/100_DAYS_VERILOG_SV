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
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


class parent;
    bit [3:0] length;
    bit [3:0] breadth;
    bit [31 :0] peri;
    function Peri();
    peri = 2*(length + breadth);
    $display("Perimeter = %d",peri); //function to calculate the perimeter;
    endfunction
    endclass
   
class child extends parent;
bit [31:0] area;

function rectangle();
    area = length * breadth;
    $display("Area=%d",area);
    super.Peri(); //super used to call the perimeter from parent class
    endfunction
 endclass
 
 module top;
 child c;
 
 initial begin 
    c = new();
    c.length = 9;
    c.breadth = 9;
    c.rectangle();
    end
    endmodule

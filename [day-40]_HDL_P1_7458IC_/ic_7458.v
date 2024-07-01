`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2024 22:54:38
// Design Name: 
// Module Name: ic_7458
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

//problem statement 
//HDL BITS PROBLEM 

/*The 7458 is a chip with four AND gates and two OR gates. This problem is slightly more complex than 7420.
Create a module with the same functionality as the 7458 chip. It has 10 inputs and 2 outputs. You may 
choose to use an assign statement to drive each of the output wires, or you may choose to declare (four) 
wires for use as intermediate signals, where each internal wire is driven by the output of one of the AND gates. */ 

module IC_7458 (
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

    wire and3_wire_a, and3_wire_b, and2_wire_c, and2_wire_d;
    
    assign and3_wire_a = p1a && p1b && p1c;
    assign and3_wire_b = p1d && p1e && p1f;
    assign and2_wire_c = p2a && p2b;
    assign and2_wire_d = p2c && p2d;
    
    assign p1y = and3_wire_a || and3_wire_b;
    assign p2y = and2_wire_c || and2_wire_d;
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2024 22:03:10
// Design Name: 
// Module Name: add_mux_code
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


module adder( input [7:0] In,
      output [7:0] Out
    );

assign Out = In + 1;

endmodule
module MUX1( input [7:0] In1,In2,
     input Sel,
     output [7:0] Out
    );

assign Out = (Sel==1)? In1: In2;
endmodule

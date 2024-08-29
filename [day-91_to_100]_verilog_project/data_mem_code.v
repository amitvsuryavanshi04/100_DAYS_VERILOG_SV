`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2024 23:44:04
// Design Name: Microcontroller simulation
// Module Name: data_mem_code
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


module DMem( input clk,
     input E, // Enable port 
     input WE, // Write enable port
     input [3:0] Addr, // Address port 
     input [7:0] DI, // Data input port
     output [7:0] DO // Data output port
    );
reg [7:0] data_mem [255:0];
// fpga4student.com: FPGA project, Verilog project, VHDL project
always @(posedge clk) 
begin
 if(E==1 && WE ==1) 
  data_mem[Addr] <= DI;
end 
 assign DO = (E ==1 )? data_mem[Addr]:0;
endmodule

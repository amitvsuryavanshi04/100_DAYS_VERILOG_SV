`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2024 23:02:09
// Design Name: 
// Module Name: enum_con
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


//day66 sv13 
module top;

	enum{start=5,address,data,stop} packet;
		initial begin
		packet = packet.first();
		$display("First element is %s and value is %d",packet.name(),packet);
		packet = packet.last();
		$display("Last element is %s and value is %d",packet.name(),packet);
		packet = packet.next();
		$display("Last element is %s and value is %d",packet.name(),packet.next());
		packet = packet.next();
		$display("Last element is %s and value is %d",packet.name(),packet.next());
		packet = packet.prev();
		$display("Last element is %s and value is %d",packet.name(),packet.next());
		$display("NUmber of elements is %d",packet.num());
		end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.07.2024 22:48:11
// Design Name: 
// Module Name: booth
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

module booth(p, a, b, clock);
	output reg [15:0] p;
	input [7:0] a, b;
	input clock;
	
	reg [15:0] ans;
	integer i, lookup_tbl;
	integer operate;

	always @(negedge clock) begin
		p = 16'b0;
		ans = 16'b0;
		for (i = 0; i < 8; i = i + 2) begin
			if (i == 0)
				lookup_tbl = 0;
			else
				lookup_tbl = b[i-1];

			lookup_tbl = lookup_tbl + 4 * b[i+1] + 2 * b[i];
			
			if (lookup_tbl == 0 || lookup_tbl == 7)
				operate = 0;
			else if (lookup_tbl == 3 || lookup_tbl == 4)
				operate = 2;
			else
				operate = 1;
				
			if (b[i+1] == 1)
				operate = -operate;

			case (operate)
				1: begin 
					ans = a; 
					ans = ans << i; 
					p = p + ans;
				end
				2: begin 
					ans = a << 1; 
					ans = ans << i; 
					p = p + ans;
				end
				-1: begin 
					ans = ~a + 1; 
					ans = ans << i; 
					p = p + ans;
				end
				-2: begin 
					ans = (a << 1); 
					ans = ~ans + 1; 
					ans = ans << i; 
					p = p + ans;
				end
			endcase
		end
	end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.07.2024 22:59:41
// Design Name: 
// Module Name: booth_tb
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


module booth_tb;
	//inputs 
	reg [7:0]a;
	reg [7:0]b;
	reg clock;
	
	//output 
	wire [15:0] p;

	//variables
	integer j,k;
	
	//instantiate the unit under test uut
	booth uut (
		.p(p),
		.a(a),
		.b(b),
		.clock(clock)
	);

	initial clock = 0;
	always #5 clock =~clock;
	initial #3000 $finish;
	
	initial 
	begin 
		a=0;
		b=0;
		for (j=1; j<10 ;j=j+1)
			for (k=1; k<11;k=k+1)
				begin
				a=j;
				b=k;
				#20 ; $display("%d * %d = %d",a,b,p);
				end
		end
endmodule

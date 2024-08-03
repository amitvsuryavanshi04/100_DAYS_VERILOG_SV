`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2024 19:52:08
// Design Name: 
// Module Name: fix_array
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


module fixed_array;
	int a[4]; //one dimensional array
	int b[4][2]; //two dimensional array
	initial begin
	a = '{1,2,3,4};
	b = '{'{1,0},'{2,0},'{3,0},'{4,0}};
	
	for( int i=0;i<4;i=i+1) begin
	$display("a[%0d]=%d",i,a[i]);
	end
	
	for( int i=0;i<4;i=i+1) begin
		for(int j=0;j<2;j=j+1) begin
		
	$display("a[%0d][%0d]=%0d",i,j,b[i][j]);
	   end
     end
   end
endmodule 
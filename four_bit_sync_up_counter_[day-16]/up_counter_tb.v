//////////////////////////////////////////////////////////////////////////////////
// GitHub:- github.com/amitvsuryavanshi04
// RTL code written by : Amit Suryavanshi 
// 
// Create Date: 06.06.2024 07:18:38
// Design Name: A four bit synchronous up counter 
// Module Name: up_counter
// Project Name: up_counter
// Target Devices: 
// Tool Used: Vivado ML Edition
// Description: 
// Language used:- Verilog 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module up_counter_tb();
reg rst,clk;
wire [3:0]count;
up_counter u1(.rst(rst),.clk(clk),.count(count));
initial clk=1;
always #5 clk=~clk;
initial begin
    rst=1;#100;
    rst=0;#200;
    rst=1;#100;
    rst=0;#200;
    $finish;
    end
endmodule

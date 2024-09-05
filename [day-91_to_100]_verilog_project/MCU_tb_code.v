
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2024 19:55:01
// Design Name: 
// Module Name: MCU_tb_code
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

module MCU_tb;
// Inputs
reg clk;
reg rst;
// Instantiate the Unit Under Test (UUT)
MicroController uut (
.clk(clk), 
.rst(rst)
);
initial begin
// Initialize Inputs

rst = 1;
// Wait 100 ns for global reset to finish
#100;
rst = 0;
end
initial begin 
clk = 0;
forever #10 clk = ~clk;
end 
endmodule

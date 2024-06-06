//////////////////////////////////////////////////////////////////////////////////
// GitHub:- github.com/amitvsuryavanshi04
// RTL code written by : Amit Suryavanshi 
// 
// Create Date: 06.06.2024 07:16:38
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


module up_counter(count,clk,rst);
input clk,rst;
output reg [3:0]count;
always @(posedge clk or negedge rst)
begin 
  if (!rst)
  count<=count+4'b0001;
  else
  count<=4'b0000;
  end
endmodule

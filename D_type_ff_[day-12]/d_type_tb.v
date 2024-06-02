//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2024 06:23:41
// Design Name: 
// Module Name: d_type_tb
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


module d_type_tb();
  reg d, rst, clk;
  wire q, qn;
  d_type uut (.d(d), .rst(rst), .clk(clk), .q(q), .qn(qn));
  initial begin d=0; clk=0; end
  always #5 clk=~clk;
  initial begin rst=0; d=1; #10; 
rst=1; d=1; #10; 
d=0; #10; 
rst=0; d=1; #10; 
rst=1; d=1; #10; 
$stop;
end
endmodule

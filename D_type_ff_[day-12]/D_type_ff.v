//////////////////////////////////////////////////////////////////////////////////
// 
// Create Date: 02.06.2024 06:06:31
// Design Name: 
// Module Name: d_type
// Project Name: D-Type flipflop
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



module d_type (
  input d, clk, rst,
  output reg q, qn
);

always @(posedge clk or posedge rst) begin
  if (~rst) begin
    q <= d;
    qn <= ~d;
  end else begin
    q <= 1'b0;
    qn <= 1'b1;
  end
end

endmodule

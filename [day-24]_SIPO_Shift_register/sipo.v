//verilog code or serial in parallel out 

module sipo(clk, sin, pout);

input clk, sin;
output [3:0] pout;
reg [3:0] temp;
reg [3:0] pout;

always @(posedge clk)

begin

    temp <= temp >> 1; //main task of the shift register are in these two lines 
	temp[3] <= sin;
	pout = temp;

end

endmodule
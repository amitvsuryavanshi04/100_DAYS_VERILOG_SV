//testbench code for serial in parallel out shift register 

module sipo_tb();

reg clk,sin;
wire [3:0] pout;

sipo dut(.clk(clk), .sin(sin),.pout(pout) ); // instantiating sipo.v module 
//passing the inputs in the form of arguments to module 

initial
begin
$monitor($time,"sin = %b, pout = %b",sin,pout);
end

initial 
begin

clk = 0;
sin = 0;

#10 sin=1'b1; //passing the test values 

#10 sin=1'b0;

#10 sin=1'b1;

#10 sin=1'b0;

#10 sin=1'b1;

#10 sin=1'b0;

end

always #5 clk = ~clk;  //clock pulse 

endmodule
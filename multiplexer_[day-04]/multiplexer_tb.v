//test bench code for multiplexer with 8 inputs and 3 select lines 
module multiplexer_tb();
reg [2:0]sel;
reg [7:0]a;
wire muxout;
multiplexer uut(.sel(sel),.a(a),.muxout(muxout));
initial begin
a=8'b00000000;
#10;a=8'b00000001;sel=3'b000;
#10;a=8'b00000010;sel=3'b001;
#10;a=8'b00000100;sel=3'b010;
#10;a=8'b00001000;sel=3'b011;
#10;a=8'b00010000;sel=3'b100;
#10;a=8'b00100000;sel=3'b101;
#10;a=8'b01000000;sel=3'b110;
#10;a=8'b10000000;sel=3'b111;

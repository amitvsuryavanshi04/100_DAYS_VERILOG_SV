module four_bit_ripple_carry_adder_tb();
reg [3:0]a,b;
wire [3:0]s,c;
wire cout;
four_bit_ripple_carry_adder uut(.a(a),.b(b),.s(s),.c(c),.cout(cout));
initial begin
a=4'b0000;b=4'b0110;#100;
a=4'b0011;b=4'b1001;#100;
$finish;
end
endmodule

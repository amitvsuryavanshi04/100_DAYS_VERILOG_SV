//testbench code for four-bit-adder here 3-inputs are taken into testbench
module four_bit_adder_tb();
reg [3:0]a;
reg [3:0]b;
reg cin;
wire cout;
wire [3:0]sum;
four_bit_adder uut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin
a=4'b0000;
b=4'b1111;
cin=1'b0;
#100;
a=4'b0001;
b=4'b1000;
cin=1'b1;
#100;
a=4'b1111;
b=4'b1011;
cin=1'b0;
#100;
$finish;
end
endmodule

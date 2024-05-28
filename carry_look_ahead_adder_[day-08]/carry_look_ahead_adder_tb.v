module carry_look_head_adder_tb();
reg [3:0]a,b;
reg cin;
wire cout;
wire [3:0]s;
carry_look_ahead_adder uut(.a(a),.b(b),.cin(cin),.s(s),.cout(cout));
initial begin
    a=4'b0011;b=4'b1000;cin=0;#50;
    a=4'b1111;b=4'b1111;cin=1;#50;
    a=4'b0000;b=4'b0000;cin=0;#50;
    a=4'b0101;b=4'b1010;cin=1;#50;
    a=4'b1101;b=4'b1000;cin=0;#50;
    a=4'b0011;b=4'b1000;cin=1;#50;
    $finish;
end
endmodule

module half_subtractor_tb();
reg a,b;
wire di,bo;
half_subtractor uut (.a(a),.b(b),.di(di),.bo(bo));
initial begin
a=0;b=0;
#100;a=0;b=1;
#100;a=1;b=0;
#100;a=1;b=1;
#100;
$stop;
end
endmodule

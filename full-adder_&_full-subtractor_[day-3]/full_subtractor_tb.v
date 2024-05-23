module full_subtractor_tb();
reg a,b,c;
wire di,bo;
full_subtractor uut(.a(a),.b(b),.c(c),.di(di),.bo(bo));
initial begin
a=0;b=0;c=0;#100;
a=0;b=0;c=1;#100;
a=0;b=1;c=0;#100;
a=0;b=1;c=1;#100;
a=1;b=0;c=0;#100;
a=1;b=0;c=1;#100;
a=1;b=1;c=0;#100;
a=1;b=1;c=1;#100;
$finish;
end
endmodule

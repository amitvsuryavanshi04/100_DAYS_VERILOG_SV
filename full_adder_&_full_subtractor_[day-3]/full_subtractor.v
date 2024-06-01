module full_subtractor(a,b,c,di,bo);
input a,b,c;
output di,bo;
assign bo=~a&(b^c)|(b&c);
assign di=a^b^c;
endmodule

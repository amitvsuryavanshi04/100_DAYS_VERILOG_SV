module full_adder(input a,b,cin,output s,c)
  wire w1,w2,w3;
  xor x1(w1,a,b);
  xor x2(s,w1,cin);
  and a1(w2,w1,cin);
  and a2(w3,a,b);
  or o1(c,w2,w3);

endmodule

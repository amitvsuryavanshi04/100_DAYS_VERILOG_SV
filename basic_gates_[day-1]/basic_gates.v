module basic_gates(A,B,C,P,Q,R,S,T,U);
input A,B,C;
output P,Q,R,S,T,U;
and a1(P,A,B,C);
nand b1(Q,A,B,C);
or o1(R,A,B,C);
nor n1(S,A,B,C);
xor n2(T,A,B,C);
xnor n3(U,A,B,C);
endmodule

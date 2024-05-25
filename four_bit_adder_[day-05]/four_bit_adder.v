//the below verilog code is a four bit adder using a full adder which I used in my day-03 
//https://github.com/amitvsuryavanshi04/100_DAYS_VERILOG_RTL/blob/main/full-adder_%26_full-subtractor_%5Bday-3%5D/full-adder.v 
// the above is the link for full adder where you can find the separate module for full adder which is included in this code in 
// starting from the 14 line of this code 
module four_bit_adder(input [3:0]a,[3:0]b,input cin, output [3:0]sum,cout); //this is the module four_bit_adder
wire c0,c1,c2,c3;
full_adder fa1(.a(a[0]),.b(b[0]),.cin(cin),.s(sum[0]),.cout(c0));
full_adder fa2(.a(a[1]),.b(b[1]),.cin(c0),.s(sum[1]),.cout(c1));
full_adder fa3(.a(a[2]),.b(b[2]),.cin(c1),.s(sum[2]),.cout(c2));
full_adder fa4(.a(a[3]),.b(b[3]),.cin(c2),.s(sum[3]),.cout(c3));
assign cout=c3;
endmodule

module full_adder(input a,b,cin,output s,cout); //code for full adder one bit 
wire w1,w2,w3;
xor x1(w1,a,b);
xor x2(s,w1,cin);
and a1(w2,w1,cin);
and a2(w3,a,b);
or o1(cout,w2,w3);

endmodule

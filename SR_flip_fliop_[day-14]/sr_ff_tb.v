//tesetbench code for SR-flip-flop 
module sr_ff_tb();
reg S,R,clk;
wire Q,Qbar;
  sr_ff uut(.S(S),.R(R),.Q(Q),.clk(clk),.Qbar(Qbar)); //instataniate the SR flip flop 
initial
clk=1'b0; //clock pulse 
always 
#5 clk=~clk; //at every 5ns the clock pulse is inverted 
initial begin
S=1'b0;R=1'b0;#100; //test case if S=0 & R=0 no change , previous state
S=1'b0;R=1'b1;#100; // reset state 
S=1'b1;R=1'b0;#100; // set state 
S=1'b1;R=1'b1;#100; // forbidden state
$finish;
end
endmodule

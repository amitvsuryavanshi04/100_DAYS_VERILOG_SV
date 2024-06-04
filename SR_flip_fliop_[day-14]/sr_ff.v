//verilog code for SR Flip Flop using always and cases
module sr_ff(S,R,clk,Q,Qbar);
input S,R,clk;
output Q,Qbar;
reg Q;
always @(posedge clk)
begin
Q<=0;
case({S,R})
    2'b00:Q<=Q;
    2'b01:Q<=0;
    2'b10:Q<=1;
    2'b11:Q<=1'bx;
    default: Q<=0;
    endcase
    end
assign Qbar=~Q;
endmodule

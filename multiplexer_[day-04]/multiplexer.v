//multiplexer is used to take many input and has select lines using which we get one of the input as output 
//this is a multiplexer with 3 select lines which gives us 2^(3)= 8 inputs 
module multiplexer(sel,a,muxout);
input [2:0]sel;
input [7:0]a;
output reg muxout;
always @(sel, a)
begin 
case (sel)
3'd0:muxout=a[0];
3'd1:muxout=a[1];
3'd2:muxout=a[2];
3'd3:muxout=a[3];
3'd4:muxout=a[4];
3'd5:muxout=a[5];
3'd6:muxout=a[6];
3'd7:muxout=a[7];
default:muxout=0;
endcase
end
endmodule

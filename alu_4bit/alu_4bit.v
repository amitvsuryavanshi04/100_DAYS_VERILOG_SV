module alu_4bit(A,B,opcode,Enable,Result);
output [7:0] Result;
input signed [3:0] A,B;
input [2:0] opcode;
input Enable;
reg[7:0] Result;
always@(opcode,A,B,Enable)
begin
if(Enable==0)
begin
Result=8'bx;
end
else
begin
case(opcode)
3'b000:begin Result=A+B;end
3'b001:begin Result=A-B;end
3'b010:begin Result=A+1;end
3'b011:begin Result=A-1;end
3'b100:begin Result=!A;end
3'b101:begin Result=~A;end
3'b110:begin Result=A|B;end
3'b111:begin Result=A&B;end
endcase
end
end
endmodule

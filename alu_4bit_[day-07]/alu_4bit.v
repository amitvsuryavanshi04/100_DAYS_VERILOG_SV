//this is code for 4-bit alu Arithematic and logical unit which is used for various arithemetic and logical operations in an electronic device
// this alu is although a basic 4 bit one but works similar to most of the alu's 
module alu_4bit(A,B,opcode,Enable,Result);
output [7:0] Result;
input signed [3:0] A,B;
input [2:0] opcode;
input Enable;
reg[7:0] Result;
  always@(opcode,A,B,Enable) //the reason to always is whenever we have change in A,B,opcode, Enable this block triggers
begin
  if(Enable==0)// this if block is used if the value of enable is equal to zero then alu is disabled so result is 8'bx 
begin
Result=8'bx;
end
else
begin
  case(opcode)// cases are used so as to show the different operations made by the ALU
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

module alu_4bit_tb();
reg signed [3:0]A;
reg signed [3:0]B;
reg [2:0]opcode;
reg Enable;
wire [7:0]Result;
alu_4bit uut (.A(A),.B(B),.opcode(opcode),.Enable(Enable),.Result(Result));
initial begin
A=0;B=0;opcode=0;Enable=0;
#10;A=4'b0000;B=4'b0000;Enable=1'b0;
#10;Enable=1'b1;A=4'b1000;B=4'b1111;opcode=3'b000;
#10;Enable=1'b1;A=4'b1000;B=4'b1111;opcode=3'b001;
#10;Enable=1'b1;A=4'b1000;B=4'b1111;opcode=3'b010;
#10;Enable=1'b1;A=4'b1000;B=4'b1111;opcode=3'b011;
#10;Enable=1'b1;A=4'b1000;B=4'b1111;opcode=3'b100;
#10;Enable=1'b1;A=4'b1000;B=4'b1111;opcode=3'b101;
#10;Enable=1'b1;A=4'b1000;B=4'b1111;opcode=3'b110;
#10;Enable=1'b1;A=4'b1000;B=4'b1111;opcode=3'b111;
#10;$finish;
end
endmodule

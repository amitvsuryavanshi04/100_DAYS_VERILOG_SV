`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2024 23:04:48
// Design Name: Microcontroller simulation
// Module Name: alu_code
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU(  input [7:0] Operand1,Operand2,
  input E, 
  input [3:0] Mode,
  input [3:0] CFlags,
  output  [7:0] Out,
  output  [3:0] Flags 
// the Z (zero), C (carry), S (sign),O (overflow) bits, from MSB to LSB, connected to status register 
   );
  wire Z,S,O;
  reg CarryOut;
  reg [7:0] Out_ALU;
  always @(*)
  begin
  case(Mode) 
  4'b0000: {CarryOut,Out_ALU} = Operand1 + Operand2;
  4'b0001: begin Out_ALU = Operand1 -  Operand2;
  CarryOut = !Out_ALU[7];
  end
  4'b0010: Out_ALU = Operand1;
  4'b0011: Out_ALU = Operand2;
  4'b0100: Out_ALU = Operand1 & Operand2;
  4'b0101: Out_ALU = Operand1 | Operand2;
  4'b0110: Out_ALU = Operand1 ^ Operand2;
  4'b0111: begin
  Out_ALU = Operand2 - Operand1;
  CarryOut = !Out_ALU[7];
  end
  4'b1000: {CarryOut,Out_ALU} = Operand2 + 8'h1;
  4'b1001: begin
  Out_ALU = Operand2 - 8'h1;
  CarryOut = !Out_ALU[7];
  end 
  4'b1010: Out_ALU = (Operand2 << Operand1[2:0])| ( Operand2 >> Operand1[2:0]);
  4'b1011: Out_ALU = (Operand2 >> Operand1[2:0])| ( Operand2 << Operand1[2:0]);
  4'b1100: Out_ALU = Operand2 << Operand1[2:0];
  4'b1101: Out_ALU = Operand2 >> Operand1[2:0];
  4'b1110: Out_ALU = Operand2 >>> Operand1[2:0];
  4'b1111: begin
 Out_ALU = 8'h0 - Operand2;
 CarryOut = !Out_ALU[7];
 end
 default: Out_ALU = Operand2;
 endcase
 end
 assign O = Out_ALU[7] ^ Out_ALU[6];
 assign Z = (Out_ALU == 0)? 1'b1 : 1'b0;
 assign S = Out_ALU[7];
 assign Flags = {Z,CarryOut,S,O};
 assign Out = Out_ALU;
 endmodule 

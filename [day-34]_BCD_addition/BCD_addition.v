`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 24.06.2024 10:21:06
// Design Name: BINARY CODED DECIMAL ADDITION 
// Module Name: BCD_addition 
// Description: performs binary coded decimal adddition 
// 
//////////////////////////////////////////////////////////////////////////////////


module BCD_addition(
input [3:0] a,
input [3:0] b,
input cin,
output [3:0] sum,
output carry
);

reg [4:0] temp;
reg [3:0] sum_temp;
reg carry;

always @(a or b or cin) begin
    temp = a + b + cin;
    
    if (temp > 9) begin
        temp = temp + 4; // Add 6 (0110) to correct BCD addition when sum > 9
        carry = 1;
    end 
    else begin 
        carry = 0;
    end
    
    sum_temp = temp[3:0];
end

assign sum = sum_temp;

endmodule

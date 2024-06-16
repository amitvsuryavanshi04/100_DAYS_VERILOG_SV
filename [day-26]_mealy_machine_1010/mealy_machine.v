`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2024 12:16:16
// Design Name: 
// Module Name: mealy_machine
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

module mealy_machine(
input x,clk,reset,
output reg z
);

parameter S0 = 0 , S1 = 1 , S2 = 2 , S3 = 3 ;
reg [1:0] PS,NS ;

    always@(posedge clk or posedge reset)
        begin
            if(reset)
                PS <= S0;   
            else    
                PS <= NS ;
        end             

    always@(PS or x)
        begin 
            
            case(PS)
                S0 : begin 
                            z = 0 ;
                            NS = x ? S1 : S0 ;
                            $display(PS);
                        end
                S1 : begin 
                            z = 0 ;
                            NS = x ? S1 : S2 ;
                            $display(PS);
                        end
                S2 : begin 
                            z = 0 ;
                            NS = x ? S3 : S0 ;
                            $display(PS);
                        end 
                S3 : begin 
                            z = x ? 1 : 0 ; 
                            NS = x ? S1 : S2 ;
                            $display(PS);
                        end

            endcase
        end
endmodule
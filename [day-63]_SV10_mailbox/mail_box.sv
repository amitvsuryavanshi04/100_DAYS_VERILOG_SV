`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2024 19:22:36
// Design Name: 
// Module Name: mail_box
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
module tb;
    mailbox abc=new();
        
        initial begin
            bit [3:0] a;
                for (int i=0; i<10;i=i+1) begin
                    a=$random;  
            abc.put(a);
            $display("data send is%d",a);
            end
      end
   
 initial begin 
    forever begin
        bit [3:0] a;
        abc.get(a);
        $display("data received is %d",a);
        end
        end
endmodule 
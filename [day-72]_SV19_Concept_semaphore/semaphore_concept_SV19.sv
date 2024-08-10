`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2024 12:20:11
// Design Name: 
// Module Name: semaphore_concept
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
 semaphore key=new(1) ;
initial begin 
	 
	repeat(2) begin 
	//process 1
	fork
	begin 
	$display("[A] process A is trying to get the key. %0t", $time);
	key.get(1); //get method to get the key	
	#10;
	$display("[A] process A got the key. %0t", $time);
	key.put(1) ;//to return the key.
	$display("[A] process A has returned the key. %0t", $time);
	end 

begin
    //process 2 
	$display("[B] process B is trying to get the key. %0t", $time);
	key.get(1) ;//get method to get the key	
	#10;
	$display("[B] process B got the key. %0t", $time);
	key.put(1) ; //to return the key.
	$display("[B] process B has returned the key. %0t", $time);
	end 

    join
   end
    
 
end
endmodule
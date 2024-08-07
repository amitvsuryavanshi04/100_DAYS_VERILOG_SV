`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2024 23:04:08
// Design Name: 
// Module Name: queue_SV18
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


module top;

    // Declare a queue of integers
    int queue[$];
    // Declare a variable to store the first element
        integer first_element;
    
    initial begin
        // Adding elements to the queue
        queue.push_back(10);
        queue.push_back(20);
        queue.push_back(30);
        
        // Displaying the queue elements
        $display("Queue elements after push_back:");
        foreach (queue[i])
            $display("queue[%0d] = %0d", i, queue[i]);
        
        
        
        // Remove and display the first element
        first_element = queue.pop_front();
        $display("First element removed: %0d", first_element);
        
        // Displaying the queue elements after pop_front
        $display("Queue elements after pop_front:");
        foreach (queue[i])
            $display("queue[%0d] = %0d", i, queue[i]);
        
        // Adding more elements to the queue
        queue.push_front(5);
        queue.push_back(40);
        
        // Displaying the final queue elements
        $display("Final queue elements:");
        foreach (queue[i])
            $display("queue[%0d] = %0d", i, queue[i]);
        
        // Display the size of the queue
        $display("Size of the queue: %0d", queue.size());
    end
endmodule

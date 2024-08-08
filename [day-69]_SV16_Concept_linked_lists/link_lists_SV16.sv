`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2024 17:29:31
// Design Name: 
// Module Name: link_lists
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


module linked_list;

    // Define the structure for a node
    typedef struct {
        int data;
        int next;  // This will store the index of the next node in the array
    } node;

    // Declare an array of nodes to simulate a linked list
    node list[10];

    // Pointer to the head of the list
    int head;

    // Task to initialize the linked list
    task init_list();
        head = -1;
    endtask

    // Task to add a new node at the beginning of the list
    task add_node(int value);
        int index;
        index = head + 1;
        list[index].data = value;
        list[index].next = head;
        head = index;
    endtask

    // Task to display the list
    task display_list();
        int current;
        current = head;
        while (current != -1) begin
            $display("%0d", list[current].data);
            current = list[current].next;
        end
    endtask

    // Test the linked list operations
    initial begin
        init_list();

        // Add nodes to the linked list
        add_node(5);
        add_node(10);
        add_node(15);

        // Display the linked list
        display_list();
    end

endmodule

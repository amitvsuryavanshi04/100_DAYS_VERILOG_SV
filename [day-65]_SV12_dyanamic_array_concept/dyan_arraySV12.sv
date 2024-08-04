`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2024 19:50:00
// Design Name: 
// Module Name: dyan_array
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


module dyan_array;
  int a[];
  initial begin
    //new method
    $display("Size of array is %d", a.size());
    a = new[4];
    $display("Size of array is %d", a.size());
    a = '{1, 2, 3, 4};  //  initialization
    for (int i = 0; i < 4; i = i + 1)
      $display("a[%0d] = %0d", i, a[i]);
    
    
    a = new[10](a);
    $display("Size of array is %d", a.size());
    //  loop condition to avoid it being skipped
    for (int i = 4; i < 10; i = i + 1)  // loop range
      $display("a[%0d] = %0d", i, a[i]);

    a.delete();
    $display("Size of array is %d", a.size());
  end
endmodule


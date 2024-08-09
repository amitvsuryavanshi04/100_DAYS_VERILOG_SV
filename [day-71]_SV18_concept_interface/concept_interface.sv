`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2024 11:37:28
// Design Name: 
// Module Name: concept_interface
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


package pkg;
  function int add(int a, b);
    return a + b;
  endfunction

  function void print(int c);
    $display("Addition is %d", c);
  endfunction
endpackage

import pkg::*; // Importing package

interface simple_if;
  logic [31:0] data_a;
  logic [31:0] data_b;
  logic [31:0] result;
  function void display_result();
    $display("Interface Result: %d", result);
  endfunction
endinterface

module top;
  int a = 10, b = 20;
  int c;

  simple_if intf(); // Interface instance

  initial begin
    intf.data_a = a;
    intf.data_b = b;
    intf.result = add(intf.data_a, intf.data_b);
    void'(print(intf.result));
    intf.display_result();
  end
endmodule


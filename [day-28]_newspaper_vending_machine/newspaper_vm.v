`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
// RTL Coder / Engineer: Amit Suryavanshi 
// Github Link: github.com/amitvsuryavanshi04 
// Create Date: 18.June.2024 07:41:43
// Design Name: Newspaper Vending Machine using Finite State Machine concept
// Module Name: newspaper_vm
// Project Name: NVM using FSM
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


module newspaper_vm(coin, clock, reset, newspaper);
  // Declaring the input and output ports
  input [1:0] coin;
  input clock;
  input reset;
  output newspaper;
  wire newspaper;

  // Internal FSM state_declarations
  wire [1:0] next_state;
  reg [1:0] pres_state;

  // State codings
  parameter s0 = 2'b00;
  parameter s5 = 2'b01;
  parameter s10 = 2'b10;
  parameter s15 = 2'b11;

  // Combinational logic used 
  function [2:0] fsm;
    input [1:0] fsm_coin;
    input [1:0] fsm_pres_state;

    reg fsm_newspaper;
    reg [1:0] fsm_next_state;

    begin 
      case (fsm_pres_state)
        s0: // state = s0
          begin
            if (fsm_coin == 2'b10)
              begin
                fsm_newspaper = 1'b0;
                fsm_next_state = s10;
              end
            else if (fsm_coin == 2'b01)
              begin
                fsm_newspaper = 1'b0;
                fsm_next_state = s5;
              end
            else
              begin 
                fsm_newspaper = 1'b0;
                fsm_next_state = s0;
              end
          end

        s5: // state = s5
          begin 
            if (fsm_coin == 2'b10)
              begin 
                fsm_newspaper = 1'b0;
                fsm_next_state = s15;
              end
            else if (fsm_coin == 2'b01)
              begin 
                fsm_newspaper = 1'b0;
                fsm_next_state = s10;
              end
            else
              begin
                fsm_newspaper = 1'b0;
                fsm_next_state = s5;
              end
          end

        s10: // state = s10
          begin 
            if (fsm_coin == 2'b10)
              begin
                fsm_newspaper = 1'b0;
                fsm_next_state = s15;
              end
            else if (fsm_coin == 2'b01)
              begin 
                fsm_newspaper = 1'b0;
                fsm_next_state = s15;
              end
            else 
              begin 
                fsm_newspaper = 1'b0;
                fsm_next_state = s0;
              end
          end

        s15: // state = s15
          begin
            fsm_newspaper = 1'b1;
            fsm_next_state = s0;
          end

      endcase
      fsm = {fsm_newspaper, fsm_next_state};
    end
  endfunction

  assign {newspaper, next_state} = fsm(coin, pres_state);

  // Clock the state flip-flops
  // Use synchronous reset
  always @(posedge clock)
  begin 
    if (reset == 1'b1)
      pres_state <= s0;
    else
      pres_state <= next_state;
  end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2024 19:53:47
// Design Name: 
// Module Name: MicroController_code
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


module MicroController(input clk,rst
    );
  parameter LOAD = 2'b00,FETCH = 2'b01, DECODE = 2'b10, EXECUTE = 2'b11;
  reg [1:0] current_state,next_state;
  reg [11:0] program_mem[9:0];
  reg load_done;
  reg[7:0] load_addr;
  wire[11:0] load_instr;
  reg[7:0] PC,  DR, Acc;
  reg [11:0] IR;
  reg [3:0]  SR;
  wire PC_E,Acc_E,SR_E,DR_E,IR_E;
 reg PC_clr,Acc_clr,SR_clr,DR_clr,IR_clr;
 wire [7:0] PC_updated,DR_updated;
 wire[11:0] IR_updated;
 wire[3:0] SR_updated;
 wire PMem_E,DMem_E,DMem_WE,ALU_E,PMem_LE,MUX1_Sel,MUX2_Sel;
 wire [3:0] ALU_Mode;
 wire [7:0] Adder_Out;
 wire [7:0] ALU_Out,ALU_Oper2;
 // LOAD instruction memory
 initial
 begin
 $readmemb("program_mem.dat", program_mem,0,9);
 end
 // ALU
 ALU ALU_unit( .Operand1(Acc),
      .Operand2(ALU_Oper2),
   .E(ALU_E),
   .Mode(ALU_Mode),
   .CFlags(SR),
      .Out(ALU_Out),
      .Flags(SR_updated) // the Z (zero), C (carry), S (sign),O (overflow) bits, from MSB to LSB, connected to status register
  );
 // MUX2
 MUX1 MUX2_unit( .In2(IR[7:0]),.In1(DR),
  .Sel(MUX2_Sel),
  .Out(ALU_Oper2)
    ); 
 // Data Memory
 DMem DMem_unit( .clk(clk),
  .E(DMem_E), // Enable port 
  .WE(DMem_WE), // Write enable port
  .Addr(IR[3:0]), // Address port 
  .DI(ALU_Out), // Data input port
  .DO(DR_updated) // Data output port
    );
 // Program memory
 PMem PMem_unit( .clk(clk),
  .E(PMem_E), // Enable port
  .Addr(PC), // Address port
  .I(IR_updated), // Instruction port
  // 3 special ports are used to load program to the memory
  .LE(PMem_LE), // Load enable port 
  .LA(load_addr), // Load address port
  .LI(load_instr)//Load instruction port
   );
 // PC ADder
 adder PC_Adder_unit( .In(PC),
   .Out(Adder_Out)
    );

// MUX1
 MUX1 MUX1_unit( .In2(IR[7:0]),.In1(Adder_Out),
  .Sel(MUX1_Sel),
  .Out(PC_updated)
    );
 // Control logic
 Control_Logic Control_Logic_Unit( .stage(current_state),
  .IR(IR),
  .SR(SR),
  .PC_E(PC_E),
  .Acc_E(Acc_E),
  .SR_E(SR_E),
  .IR_E(IR_E),
  .DR_E(DR_E),
  .PMem_E(PMem_E),
  .DMem_E(DMem_E),
  .DMem_WE(DMem_WE),
  .ALU_E(ALU_E),
  .MUX1_Sel(MUX1_Sel),
  .MUX2_Sel(MUX2_Sel),
  .PMem_LE(PMem_LE),
  .ALU_Mode(ALU_Mode)
    );

 // LOAD
 always @(posedge clk)
 begin
 if(rst==1) begin
 load_addr <= 0;
 load_done <= 1'b0;
 end 
 else if(PMem_LE==1)
 begin 
 load_addr <= load_addr + 8'd1;
 if(load_addr == 8'd9)
 begin
 load_addr <= 8'd0;
 load_done <= 1'b1;
 end
 else
 begin
 load_done <= 1'b0;
 end
 end 
 end

 assign load_instr = program_mem[load_addr];
 // next state
 always @(posedge clk)
 begin
 if(rst==1)
 current_state <= LOAD;
 else
 current_state <= next_state;
 end
 always @(*)
 begin
 PC_clr = 0;
 Acc_clr = 0;
 SR_clr = 0;
 DR_clr = 0; 
 IR_clr = 0;
 case(current_state)
 LOAD: begin
 if(load_done==1) begin
 next_state = FETCH;
 PC_clr = 1;
 Acc_clr = 1;
 SR_clr = 1;
 DR_clr = 1; 
 IR_clr = 1;
 end
 else
 next_state = LOAD;
 end
 FETCH: begin
 next_state = DECODE;
 end
 DECODE: begin
 next_state = EXECUTE;
 end
 EXECUTE: begin
 next_state = FETCH;
 end 
 endcase
 end

 // 3 programmer visible register
 always @(posedge clk)
 begin
 if(rst==1) 
 begin
 PC <= 8'd0;
 Acc <= 8'd0;
 SR <= 4'd0;
 end
 else 
 begin
 if(PC_E==1'd1) 
 PC <= PC_updated;
 else if (PC_clr==1)
 PC <= 8'd0;
 if(Acc_E==1'd1) 
 Acc <= ALU_Out;
 else if (Acc_clr==1)
 Acc <= 8'd0;
 if(SR_E==1'd1) 
 SR <= SR_updated; 
 else if (SR_clr==1)
 SR <= 4'd0; 
 end
 end

 // 2 programmer invisible register
 always @(posedge clk)
 begin
 if(DR_E==1'd1) 
 DR <= DR_updated;
 else if (DR_clr==1)
 DR  <= 8'd0;
 if(IR_E==1'd1) 
 IR <= IR_updated;
 else if(IR_clr==1)
 IR <= 12'd0;
 end 
endmodule

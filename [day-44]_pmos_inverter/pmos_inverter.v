`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2024 19:34:10
// Design Name: 
// Module Name: pmos_inverter
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


module pmos_inverter (
    output wire out,
    input wire in
);

    wire pmos_drain;

    // Instantiate PMOS transistor take code from day-43 link 
    // github link for transistor logic https://github.com/amitvsuryavanshi04/100_DAYS_RTL/blob/main/%5Bday-43%5D_pmos_logic/pmos_transistor_logic.v
    pmos_transistor_logic pmos1 (
        .drain(pmos_drain),
        .gate(in),
        .source(1'b1) // PMOS source connected to Vdd
    );

    assign out = pmos_drain;

endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2024 17:01:43
// Design Name: 
// Module Name: environment
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

`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"

// environment.sv
class environment;
    generator gen;
    driver drv;
    mailbox mbox;
    virtual fa_intf vif;

    function new(virtual fa_intf vif);
        this.vif = vif;
        mbox = new();
        gen = new(mbox);
        drv = new(vif, mbox);
    endfunction

    task run();
        fork
            gen.run();
            drv.run();
        join
    endtask
endclass
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2024 17:13:20
// Design Name: 
// Module Name: driver
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

// driver.sv
class driver;
    virtual fa_intf vif;
    mailbox mbox;
    transaction tr;
    
    function new(virtual fa_intf vif, mailbox mbox);
        tr = new();
        this.vif = vif;
        this.mbox = mbox;  // Corrected typo
    endfunction
    
    task run();
        forever begin
            mbox.get(tr);
            vif.a <= tr.a;
            vif.b <= tr.b;
            vif.cin <= tr.cin;
            #1;
            tr.s = vif.s;
            tr.c = vif.c;
            $display("Output s = %d, c = %d", tr.s, tr.c);
        end
    endtask
endclass
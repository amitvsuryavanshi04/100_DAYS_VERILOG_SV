
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2024 17:09:10
// Design Name: 
// Module Name: generator
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


// generator.sv
class generator;
    transaction tr;
    mailbox mbox;
    
    function new(mailbox mbox);
        this.mbox = mbox;
    endfunction
    
    task run();
        repeat (3) begin
            tr = new();
            tr.randomize();
            $display("a = %d, b = %d, cin = %d", tr.a, tr.b, tr.cin);
            mbox.put(tr);
        end
    endtask
endclass

//day-75 SV22 Callbacks in System Verilog
class Base;
    // Base class with a virtual function
    virtual function void notify();
        $display("Base notification");
    endfunction
endclass

class Derived extends Base;
    // Derived class that overrides the notify function
    function void notify();
        $display("Derived notification");
    endfunction
endclass

module top;
    // Create instances of Base and Derived classes
    Base base_obj = new();
    Derived derived_obj = new();
    
    initial begin
        // Register callbacks
        base_obj.notify();    // Calls Base's notify
        derived_obj.notify();  // Calls Derived's notify
        base_obj = derived_obj; // Upcast
        base_obj.notify();     // Calls Derived's notify due to polymorphism
    end
endmodule

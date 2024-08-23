class BaseClass;
  virtual function void show();
    $display("BaseClass");
  endfunction
endclass

class DerivedClass extends BaseClass;
  function void show();
    $display("DerivedClass");
  endfunction
endclass

module dynamic_cast_example;

  BaseClass base_obj;
  DerivedClass derived_obj;
  DerivedClass casted_obj; // Declare the variable here

  initial begin
    derived_obj = new();
    base_obj = derived_obj;

    // Dynamic cast using '$cast'
    if ($cast(casted_obj, base_obj)) begin
      casted_obj.show(); // Should display "DerivedClass"
    end else begin
      $display("Dynamic cast failed");
    end
  end

endmodule

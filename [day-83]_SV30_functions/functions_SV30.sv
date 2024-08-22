module function_tb;
  int x,y,z;
  int p,q,r;
  int d;
  int g,h;
  
  // Function using argument pass by value.
  function int sum_value(int x, int y);
    x = x + y; // This modifies the local variable x
    return x;  // Return the modified value of x
  endfunction
  
   // Function using pass by reference.
  function automatic int sum_ref(ref int p, int q);
    p = p + q; // Modifying p will affect the original variable
    return p + q;
  endfunction
  
  // Function using default arguments.
  function int sum_default(int a = 5, int b = 10, int c = 20);
    return a + b + c;
  endfunction
  
  // Function using argument pass by name.
  function void display(int g, string h);
    $display("-----------------------------------------------------------------");
    $display("Function using argument pass by Name");
    $display("\tValue of g = %0d, h = %0s", g, h);
  endfunction

  initial begin
    x = 20;
    y = 30;
    p = 20;
    q = 30;
    
    d = sum_default( , , 10);  // Using the default values for a and b, overriding c
    
    z = sum_value(x, y);
    r = sum_ref(p, q);
    
    display(.h("Hello This is Amit Suryavanshi"), .g(2024));  // Using named arguments for display function

    // Display the results
    $display("-----------------------------------------------------------------");
    $display("Function using argument pass by value");
    $display("\tValue of x = %0d", x);
    $display("\tValue of y = %0d", y);
    $display("\tValue of z = %0d", z);
    $display("-----------------------------------------------------------------");

    $display("-----------------------------------------------------------------");
    $display("Function using argument pass by Reference");
    $display("\tValue of p = %0d", p);
    $display("\tValue of q = %0d", q);
    $display("\tValue of r = %0d", r);
    $display("-----------------------------------------------------------------");

    $display("-----------------------------------------------------------------");
    $display("Function using default arguments");
    $display("\tValue of d = %0d", d);
    $display("-----------------------------------------------------------------");
  end
endmodule

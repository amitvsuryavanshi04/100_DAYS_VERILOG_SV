//Day-90 SV37 Converting between structure and an array.
module struct_to_array_conversion;

  initial begin
    // Define a structure with various data types
    typedef struct { 
        int a;         // 32-bit integer
        byte b;        // 8-bit byte
        shortint c;    // 16-bit short integer
        int d;         // 32-bit integer
    } my_struct_s;
    
    // Initialize the structure with specific values
    my_struct_s st = '{32'haaaa_aaaa,   // int a
                      8'hbb,            // byte b
                      16'hcccc,         // shortint c
                      32'hdddd_dddd};   // int d
    
    // Declare a dynamic byte array
    byte b[];
    
    // Convert the structure to a byte array using streaming operator
    b = { >> {st}};  // Expected byte array: {aa aa aa aa bb cc cc dd dd dd dd}
    
    // Display the byte array
    foreach (b[i])
      $display("b[%0d] = %h", i, b[i]);
    
    // Reinitialize the byte array with new values
    b = '{8'h11, 8'h22, 8'h33, 8'h44, 8'h55, 8'h66, 8'h77,
         8'h88, 8'h99, 8'haa, 8'hbb};
    
    // Convert the byte array back to the structure using streaming operator
    st = { >> {b}};  // Expected structure values: st = 11223344, 55, 6664, 8899aabb
    
    // Display the structure values
    $display("st.a = %h", st.a);
    $display("st.b = %h", st.b);
    $display("st.c = %h", st.c);
    $display("st.d = %h", st.d);

  end

endmodule

# 100_DAYS_RTL Coding
Starting my 100 days RTL coding challenge 
just to have discipline and consistency in VLSI domain starting this challenge right from basics to advanced 
If anyone finds this useful and likes my consistency please consider me for opportunity in VLSI domain

##### google docs link for schematic and waveforms of these codes :-
##### https://bit.ly/verilog100days-rtl-code-amit

#### Day-01 basic gates
    Basic gates are foundation of any digital circuits and 
    yes they are used in almost every digital circuitary

#### Day-02 half adder and half subtractor
    The basic adder and the basic subtractor 
    used for addition and subtraction of bits 

#### Day-03 full adder and full subtractor
    full adder can be indpendently or by using two half adders and 
    or instantiating the half adder module etc., 
    the similartiy is also seen in the full subtractor 

#### Day-04 multiplexer 8 inputs 
    Mux refers to a circuit where we use n select 
    lines to take one input of 2^n inputs and give it as a output 

#### Day-05 four bit adder using one bit adder 
    This is basically extension of a one bit adder as an application 
    I have used this one bit adder to make four bit adder which 
    takes four bits as inputs and performs calculation 

#### Day-06 four bit ripple carry adder
    four-bit ripple carry adder, a fundamental digital circuit that performs 
    binary addition of two 4-bit numbers. The design showcases basic principles 
    of digital logic and is essential for understanding more complex arithmetic circuits.

#### Day-07 alu four bit
    ALU refers to Arithemetic and logical unit which as the name itself 
    gives the description for the module ALU which is a integral part of CPU 
    it basically performs arithemetic and logical operations which is a must in a 

#### Day-08 Carry look ahead adder
    a high-speed digital circuit that efficiently adds two binary
    numbers by reducing the propagation delay caused by carry bits.
#### Day-09 encoder 8:3 
    a digital circuit that converts one of eight active inputs into a corresponding 3-bit binary code.
#### Day-10 Decoder and Demux
    # decoder, a digital circuit that converts binary-coded inputs into a unique set of outputs,
        typically used for selecting specific memory addresses.
    # demultiplexer (demux), a digital circuit that takes a single input and 
    routes it to one of several outputs, based on a set of select lines.
#### Day-11 Simple Communication System  {Applied day-1 to day-10}
     a simple communication system using Verilog, incorporating an encoder, decoder,
     multiplexer (mux), and demultiplexer (demux) to facilitate efficient data transmission and reception.
#### Day-12 D Type Flip-Flop 
     a D-type flip-flop, a digital storage element that captures and stores a 
     single bit of data on the rising or falling edge of a clock signal.
#### Day-13 JK Flip-Flop
    This project implements a JK flip-flop, a versatile digital storage element that can operate as a 
    set-reset flip-flop, toggle flip-flop, or hold state, based on its input conditions and clock signal.
#### Day-14 SR Flip-Flop 
    SR (Set-Reset) flip-flop is a basic sequential logic circuit with two inputs, S (Set) and R (Reset),
    that controls a single output, Q. It sets Q to 1 when S=1 and R=0, resets Q to 0 when S=0 and R=1, 
    and maintains its state when S=0 and R=0; the state when S=1 and R=1 is considered invalid.
#### Day-15 T Flip-Flop
     Implement a T (Toggle) flip-flop, which toggles its state on every clock edge if the T input is high.
     Applications: Counters, clock dividers
#### Day-16 4-bit synchronous counter 
     A simple 4 bit up counter which is used to count the binary values from 0 to 15 in sync from signal ,
     ensuring the simultaneous change and eliminating propagation delays, used in counting,timing 
     Frequency division.
#### Day-17 Types of counters 
     Types of Counters:

     (*) 4-bit Asynchronous (Ripple) Counter: A counter where flip-flops are triggered by the previous 
     flip-flop's output, leading to a ripple effect and propagation delay.
     (*) Johnson Counter: A shift register counter with an inverted feedback loop, providing a sequence 
     of states double the length of the number of flip-flops.
     (*) Ring Counter: A shift register counter where a single bit circulates through the flip-flops, 
     providing a straightforward sequence generation method.
     Applications:

     (*) Ripple Counter: Simple digital clocks, frequency counters.
     (*) Johnson Counter: Sequence generation, digital phase-locked loops.
     (*) Ring Counter: Sequence generation, state machines, LED light chasers.

#### Day-18 BitComparator_BarrelShifer_Multiplier_MatrixMultiplier
     8-bit Comparator:
     An 8-bit comparator compares two 8-bit binary numbers and determines if one is greater than, less than,
     or equal to the other. This module is essential in digital systems for numerical comparisons.

     Barrel Shifter:
     A barrel shifter allows for rapid shifting of data by a specified number of bit positions in one clock 
     cycle, either to the left or right. This is useful in arithmetic operations and data processing.

     8x8 Multiplier:
     An 8x8 multiplier multiplies two 8-bit binary numbers to produce a 16-bit product. This is commonly 
     used in arithmetic operations within digital systems.

     4x4 Matrix Multiplier:
     A 4x4 matrix multiplier multiplies two 4x4 matrices to produce a resulting 4x4 matrix. Each element 
     in the result matrix is the dot product of corresponding row and column vectors from the input matrices.

#### Day-19 Priority Encoder and Sequence Detector 1011 
     Priority Encoder: A digital circuit that converts multiple active input signals into a binary code based 
     on the highest-priority active input.

     Sequence Detector (FSM): A finite state machine designed to recognize a specific sequence of bits in a 
     bitstream, used for detecting patterns or protocols.

#### Day-20: Traffic Light Controller SystemTraffic Light Controller System:
     A real-world application using counters, FSM, comparators, and multiplexers to manage the timing
     and state transitions of traffic lights at a 4-way intersection. The system ensures smooth transitions
     between red, yellow, and green lights to efficiently control traffic flow.

#### Day-21: UART (Universal Asynchronous Receiver/Transmitter)UART: 
     Implemented a UART module for asynchronous serial communication between devices. 
     The transmitter (TX) converts parallel data into serial form, and the receiver (RX) converts received serial 
     data back into parallel form. Used in embedded systems for serial data transmission and reception.
#### Day-22 Shift Operators
     This module implements logical and arithmetic shift operations on a 4-bit input based on a 2-bit select signal
     providing left and right shift capabilities.

#### Day-23 PISO Parallel-In-Serial-Out Shift register 
     A PISO shift register is a digital circuit that takes parallel data input and converts it to serial output. 
     This is commonly used for data transmission where multiple bits need to be sent sequentially over a single data line.

#### Day-24 SIPO Serial-In-Parallel-Out Shift register 
     A SIPO shift register is a digital circuit that receives data serially, bit by bit, and outputs the data in
     parallel form. It is useful for converting serial data received from a single data line into parallel data for 
     further processing in digital systems.

#### Day-25 SISO Serial-In-Serial-Out Shift register 
     A SISO shift register is a digital circuit that receives data serially and shifts it out serially, bit by bit. 
     It is used for temporary data storage and data transfer in digital systems, allowing data to be moved from one 
     place to another one bit at a time.
#### Day-26 Mealy machine sequence detector 
    The Verilog code provided implements a Mealy state machine designed for sequence detection. A Mealy machine is a 
    finite state machine where the output depends on both the current state and the current input.
    This specific Mealy machine detects a particular sequence of input bits and transitions between states based on the input x
#### Day-27 Moore machine sequence detector 
    The Verilog code given in the directory named [day-27]_moore_machine_code designed for sequence detection 
    Moore state machine to detect the sequence "1011" in a serial input stream. The output is determined solely based on the current state
    ensuring reliable sequence detection. The provided Verilog code and testbench verify the correct operation of the sequence detector.
    Mealy machines determine their outputs based on the current state and input, while Moore machines determine their outputs solely based 
    on the current state.
	
#### Day-28 Newspaper vending machine using FSM 
    1) When a coin inserted , 2 bit signal coin[1:0] sent, signal is asserted at the next negative edge of a global 
    clock signal and stays up for one cycle.
 
    2) Output of the circuit is singlebit each time total amount inserted in 15 cents or more, an output signal goes high 

    3) Reset signal to reset FSM , reset signal given is this case is "synchronous reset"

#### Day-29 Digital clock 
    This project implements a simple digital clock using Verilog. The clock counts seconds, minutes, and hours, rolling over appropriately 
	(seconds and minutes reset after 59, hours reset after 23). It provides a fundamental understanding of counters and their synchronization,
	as well as how to manage time-based operations in digital systems.
	
#### Day-30 Debounce circuit 
    The Debounce Circuit project involves designing a digital circuit to eliminate the noise or bouncing effect in mechanical switches, 
    ensuring a stable signal output. The debounce circuit is implemented in Verilog and manages the state of a switch input by using a
    shift register to filter out spurious changes. 

#### Day-31 Binary to gray converter 
    Gray Code is similar to binary code except its successive number differs by only a single bit. Hence, it has importance in communication 
	systems as it minimizes error occurrence. They are also useful in rotary, optical encoders, data acquisition systems, etc.

#### Day-32 Gray to Binary Converter 
	Verilog code for converting 4-bit Gray code to 4-bit Binary code. Gray code is a binary numeral system where two successive values differ 
	in only one bit. This conversion is useful in various digital systems where error minimization during transitions is critical.
	
#### Day-33 Synchronous FIFO using a common counter 
    **FIFO write operation
    FIFO can store/write the wr_data at every posedge of the clock based on wr_en signal till
    it is full. The write pointer gets incremented on every data write in FIFO memory.
    **FIFO read operation
    The data can be taken out or read from FIFO at every posedge of the clock based on the
    rd_en signal till it is empty. The read pointer gets incremented on every data read from
    FIFO memory.
	
#### Day-34 Binary Coded Decimal addition process BCD VERILOG CODE 
    This Verilog module performs Binary Coded Decimal (BCD) addition of two 4-bit inputs, handling 
    carry-in and producing a correct BCD sum and carry-out.
	
#### Day-35 Binary Coded Decimal to Excess-3 conversion
    This part is like adding 3 to each binary coded decimal so it's also known as BCD-Excess-3 
	conversion can be done in various ways but I have used one line code 
	"assign e = b + 4'b0011"

#### Day-36 Tristate Buffer 
    tristate buffer is a three terminal device tri means 3 when enable value is one the input 
	is transferred to output when enable is zero the output is high impedance
	truth table 
    input 	enable 		output
    X		 0 			   Z 
    0 		 1 			   0
    1        1			   1

#### Day-37 L-SR latch using NOR 
    it is also known as bistable latch the SR here refers to set and reset yes it is one of the
	fundamental building block in digital electronics it has capacity to store one bit of data 
	and is commonly used for memory storage circuits, sync and control applications. 	

#### Day-38 ADC,DAC & it's combined system 
    [*]Combining ADC and DAC allows for the complete cycle of converting an analog signal to digital
    and then back to analog. This process is commonly used in signal processing systems, communication
    systems, and data acquisition systems. 
	
    [*]The combined system consists of an ADC module and a DAC module. The ADC module samples the analog 
    input signal and converts it to a digital signal. The DAC module then takes this digital signal and 
    converts it back to an analog signal.

#### Day-39 added Clock divider 
    This Verilog module divides the input clock frequency by a specified divisor, useful for generating 
    slower clock signals. The testbench simulates the module with a 50MHz input clock.

#### Day-40 IC 7458 simulation HDL bit problem
    Problem statement :->> 
    The 7458 is a chip with four AND gates and two OR gates. This problem is slightly more complex than 7420.
    Create a module with the same functionality as the 7458 chip. It has 10 inputs and 2 outputs. You may choose 
    to use an assign statement to drive each of the output wires, or you may choose to declare (four) wires for 
    use as intermediate signals, where each internal wire is driven by the output of one of the AND gates
#### Day-41 Population counter using a vector HDL bits problem
    A "population count" circuit counts the number of '1's in an input vector. Build a population count circuit 
    for a 255-bit input vector.

#### Day-42 Double Edge triggered flip-flop HDL bit problem
    The doub_edge_ff implements a D flip-flop with XOR logic. The output q is derived from the XOR of intermediate 
    flip-flop outputs triggered by both the positive and negative edges of the clock. The doub_edge_ff_tb is a 
    testbench that applies a sequence of inputs to verify the behavior of the Flip flop.

#### Day-43 pmos logic Circuit
    pmos logic verilog code 
	
#### Day-44 pmos inverter logic
    This Verilog code defines a PMOS-based inverter and includes a testbench to verify its operation, toggling the
    input signal to observe the correct inversion at the output.
   
#### Day-45 modulo n counter
    Added verilog design and testbench code for modulo n counter 

#### Day-46 OR using 2:1 mux
    The verilog code for OR gate using 2:1 mux where A is select line and B is one I0 input line 

#### Day-47 AND gate using 2:1 mux 
    The verilog code for AND gate using a mux where A is select line and B is the I1 input line , I0 is zero
	
#### Day-48 OR gate using 2:1 decoder
    Verilog code for OR gate using decoder .

#### Day-49 Vedic Multiplier
    This project demonstrates the implementation of a 2x2 Vedic Multiplier using Verilog. The Vedic Multiplier is
	based on the "Urdhva Tiryakbhyam" (Vertically and Crosswise) sutra of Vedic mathematics, which allows for fast
	multiplication. The testbench verifies the functionality of the Vedic Multiplier by applying various input combinations.

#### Day-50 Booth Multiplier 
    In Booth’s multiplier works on Booth’s Algorithm that does the multiplication of 2’s complement notation of two signed
	binary numbers.
# ---------------------------------------------------------------

#### Day-51 FFT simulation	
    Added code for Fast Fourier transform simulation

#### Day-52 IFFT simulation 
    Added code for Inverse Fast fourier transform simulation

#### Day-53 Barrel shifter 8-bit
    A combinational circuit, unlike regular shifters which are sequential ,to shift a 8 bit data, register based shifters 
    will take 8 clock cycles whereas this barrel shifter can do it by the time of one clock cycle. It is used in ALU for 
	performing shifting operations .

# ---------------SYSTEM VERILOG PART ----------------------------
### Learning System Verilog
    The Concept was very much important because I had zero knowledge about system verilog so learning was important
    I took most of the system verilog code from a youtube cannel called "*VLSICHAPS*" thanks to this channel and the 
    explaination of code given is much simpler and upto the point required that too in short duration of time..
    Link to the youtube Channel:- https://www.youtube.com/@vlsichaps
#### Day-54 SV1 randomization 
    Randomization allows designers to generate random input values and test their designs thoroughly which can be used in 
    testability scenarios.. like instead of typing them manually we can generate them using rand and randc keywords.

#### Day-55 SV2 pre randomization and post randomization 
    the pre randmoize method can be used wher we need to declare the values of any variable and keep then it should randomize 
    in post randomize even if the randomization occurs the values in the post randomize function keeps the value same 
    this thing might be a simple it has use cases in various application accordingly.

#### Day-56 SV3 inline constraints
    In SystemVerilog, inline constraints are used to specify constraints directly within the instantiation of random variables. 
    This allows for more concise and readable code by embedding the constraints alongside the variable declaration and assignment.

#### Day-57 SV4 weighted constraint in randomization 
    In this code the word weighted refers to the occurance of values like ex., 5 how much more it occured more the weight is
    The value which has to be repeated more is declared in the system verilog code

#### Day-58 SV5 Inside operator for randomization 
    Inside keyword is used to generate values in between certain range 
    example rand [0:3] a; class.a{[0:2]} only values bewtween  0 to 2 is printed

#### Day-59 SV6 Solve before constraints for randomization
    Suppose a value has an occurance less in probability we can increase it's occurance by creating constraints.

#### Day-60 SV7 concept of inheritence 
    three pillars of OOP 
    a.inheritence 
    b.encapsulation 
    c.polymorphism

    in inheritence we have flexibility to inherit the parent class or higher class with it's 
    properties in another class using the keyword super in system verilog 
    example calling the parent class in the child class with the same parameters to print the function values.

#### Day-61 SV8 Concept of Encapsulation
    Encapsulation in programming is the practice of bundling data (variables) and methods (functions) that 
    operate on the data into a single unit or class, restricting access to some components to protect the integrity of the data.
    In the provided SystemVerilog example, the parent class encapsulates variables a and b and a method print, while the child 
    class extends parent, adding the method add to manipulate these variables.

#### Day-62 SV9 concept of basic polymorphism 
    This SystemVerilog code demonstrates polymorphism by defining a `parent` class with a `print` method and a `child` class that
    overrides the `print` method. In the `top` module, an instance of `parent` is assigned to an instance of `child`, showcasing
    the ability of the `parent` reference to call the overridden `print` method in the `child` class.

#### Day-63 SV10 concept of Mailbox in system verilog
    This SystemVerilog testbench module demonstrates inter-process communication using a mailbox. In the first initial block, 
    random 4-bit values are generated and sent to the mailbox `abc` using the `put` method, while displaying each sent value. 
    In the second initial block, a forever loop continuously retrieves values from the mailbox using the `get` method and displays 
    each received value, illustrating how mailboxes facilitate communication between concurrent processes.

#### Day-64 SV11 conept of fixed array
    Added the simple of creating a 1-D and 2-D array in system verilog .. can be used to store the input elements.
    This SystemVerilog code demonstrates dynamic array operations including creation, resizing, initialization, and deletion. 
    It shows how to display the size and elements of the dynamic array at various stages, highlighting the flexibility and usage 
    of dynamic arrays in hardware description languages.

#### Day-65 SV12 Concept of Dynamic array
    The code is similar to fixed array instead just declare the syntax according to dynamic array and the system verilog code I used
    shows the usage of simple functions in dynamic array.

#### Day-66 SV13 Concept of Enumeration 
    the use of enumerations, including methods to access the first, last, next, and previous elements, as well as displaying their 
    names and values. It showcases the enumeration's utility for handling a sequence of states in a packet processing context.

#### Day-67 SV14 concept of Associative arrays
    Associative arrays are useful when the index values are not consecutive or when the array size is not known in advance. They are
    essentially hash tables and provide a mapping from an arbitrary key type to a value type.

#### Day-68 SV15 Concept of Queue
    This example showcases the dynamic and flexible nature of queues in SystemVerilog, making them useful for various applications,
    including testbenches and data processing.
	
#### Day-69 SV16 concpet of linked lists.
    This example demonstrates the implementation of a simple singly linked list in SystemVerilog, showcasing basic operations like 
    adding nodes and traversing the list. The code utilizes a struct-based node representation and an array to simulate dynamic 
    memory allocation.

#### Day-70 SV17 Concept of package.
    The code says about the usage of packages in the system verilog to encapsulate reusable funcitons . The package 'pkg' contains 
    an 'add' function to sum two integers and a 'part' function to display the result. By importing the package into the module 'top'
    these functions can be easily reused, showcasing the modularity and reusability of system verilog code.

#### Day-71 SV18 Concept of interfaces.
    This code introduces the concept of interfaces in SystemVerilog. Interfaces allow you to bundle related signals and functions, 
    simplifying connections between modules. The provided example demonstrates how to use an interface to manage signals and 
    perform operations on them.

#### Day-72 SV19 Concept of Semaphore.
    resource is very limited process trying to access the same resource at the same time memory process --write and read occures at same
    time the conflict occurs and to avoid this we use semaphore... 
    by making use of a key and then make use of resource and return back the key to the process and repeat the process..

# ---------------------------------------------------------------
### Verification generally goes like this 
    The flow of verification goes like this :- 
    We need to create a top module---> a test file ---> send to environment ---> generator --->mailbox--->driver---> driving the DUT .
 

#### Day-73 SV20 Full adder verification.
    The flow of system verilog has been shown in the form of picutre in the Day-73 directory where I have explained
    How the verification is done , as an example I have taken full adder yet one of the simpler but important digital
    Circuit used in almost most of the bigger circuits to add digital values. 
    You can access the EDA Playground project [here] (https://www.edaplayground.com/x/iVRN).

#### Day-74 SV21 Concept of Functional Coverage implicit bins
    This SystemVerilog code demonstrates randomization and coverage collection using a class `pkt` with `addr` and `data` fields, 
    and a covergroup `cg` to monitor these fields during simulation. The code runs 20 random tests and samples the coverage of 
    `addr` and `data` values in XSIM. 
    You can access the EDA Playground project [here] (https://www.edaplayground.com/x/B2LD).

#### Day-75 SV22 Callbacks in system verilog 
    This SystemVerilog code demonstrates the use of callbacks and polymorphism, where a base class defines a virtual notification 
    function that can be overridden by a derived class. The example showcases how to invoke the appropriate method based on the 
    object type, illustrating dynamic behavior and flexibility in object-oriented programming.

#### Day-76 SV23 Assertions in System Verilog.
    Used to validate and verify the digital circuits designs to ensure that signals and responses behave 
    expected and according to the logic. A simple application in full adder circuit to check sum and carry
    values are correct or not.

#### Day-77 SV24 Concpet of Random Stability.
    This code demonstrates the concept of random stability in SystemVerilog, ensuring consistent random value generation across 
    multiple simulation runs using the same seed. It highlights how to control and reproduce random sequences for effective 
    debugging and verification.

#### Day-78 SV25 Concpet of Cross Coverage
    Cross Coverage is a specialized form of functional coverage that deals with combinations of values between different coverage 
    points.

#### Day-79 SV26 Associative arrays [extension]
    Associative arrays in SystemVerilog, demonstrating operations like element insertion, existence checking, and index 
    navigation methods (first, last, prev, next) while also covering array deletion.

#### Day-80 SV27 Clock Generation 
    This example demonstrates clock generation and the significance of clock signals in controlling sequential logic.

#### Day-81 SV28 Parameterized Modules 
    This code demonstrates the use of parameterized modules, where the "WIDTH" parameter allows the same adder module 
    to handle both 8-bit and 16-bit additions. This flexibility helps in designing scalable and reusable components

#### Day-82 SV29 Clock Divider code 
    This code implements a Clock Divider, which reduces the frequency of an input clock signal by toggling the output
    clock at a slower rate. It is useful for scenarios where different modules require clocks at varying frequencies.

#### Day-83 SV30 Functions in System Verilog.
    This testbench demonstrates different function types in SystemVerilog, including argument passing by value, reference, 
    name, and the use of default arguments. These functions provide various ways to manipulate and process data in a modular 
    and reusable manner.

#### Day-84 SV31 Tasks in System Verilog.
    how to use tasks in SystemVerilog with pass by value, pass by reference, and static tasks. Tasks provide flexibility
    for complex operations, allowing both argument manipulation and interactions with global variables.

#### Day-85 SV32 Static Cast.
    In SystemVerilog, static casting is used to convert one data type to another explicitly at compile time.

#### Day-86 SV33 Dynamic Cast.
    Dynamic casting checks the compatibility of the object at runtime and safely converts it if possible.
 
#### Day-87 SV34 Packaing data with streaming operator.
    In SystemVerilog, streaming operators ("<<", ">>") are used for efficiently packing and unpacking data 
    into a bit stream, making array conversions more readable and compact.

#### Day-88 SV35 unpacking data with streaming operator.
	Unpacking: When used on the left side of an assignment, streaming operators unpack a stream of bits
    into the target array or structure, automatically allocating elements as needed.
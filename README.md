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

     (*) 4-bit Asynchronous (Ripple) Counter: A counter where flip-flops are triggered by the previous flip-flop's output, leading to a ripple effect and propagation delay.
     (*) Johnson Counter: A shift register counter with an inverted feedback loop, providing a sequence of states double the length of the number of flip-flops.
     (*) Ring Counter: A shift register counter where a single bit circulates through the flip-flops, providing a straightforward sequence generation method.
     
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
     Priority Encoder: A digital circuit that converts multiple active input signals into a binary code based on the highest-priority active input.
     Sequence Detector (FSM): A finite state machine designed to recognize a specific sequence of bits in a bitstream, used for detecting patterns or protocols.

#### Day-20: Traffic Light Controller SystemTraffic Light Controller System:
     A real-world application using counters, FSM, comparators, and multiplexers to manage the timing
     and state transitions of traffic lights at a 4-way intersection. The system ensures smooth transitions
     between red, yellow, and green lights to efficiently control traffic flow.

#### Day-21: UART (Universal Asynchronous Receiver/Transmitter)UART: 
     Implemented a UART module for asynchronous serial communication between devices. 
     The transmitter (TX) converts parallel data into serial form, and the receiver (RX) converts received serial 
     data back into parallel form. Used in embedded systems for serial data transmission and reception.

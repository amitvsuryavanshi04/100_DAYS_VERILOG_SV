module simp_comm_sys (
    input [3:0] message,
    input [1:0] sel,
    output [3:0] received_message
);
    wire [1:0] encoded_signal;
    wire mux_out;
    wire [3:0] demux_out;

    enco_4to2 encoder (
        .in(message),
        .out(encoded_signal)
    );

    mux_4to1 mux (
        .data(message),
        .sel(sel),
        .out(mux_out)
    );

    demux_1to4 demux (
        .in(mux_out),
        .sel(sel),
        .out(demux_out)
    );

    deco_2to4 decoder (
        .in(encoded_signal),
        .out(received_message)
    );

endmodule

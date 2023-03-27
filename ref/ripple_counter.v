/*
This code defines a `ripple_counter` module with two inputs (`clk` and `reset`) and one output (`q`).
The `ripple_counter` module instantiates four `t_ff` modules, which represent T flip-flops. The first
flip-flop is clocked by the external `clk` signal, and each subsequent flip-flop is clocked by the output of
the previous flip-flop. The `d` inputs of the flip-flops are connected to intermediate signals that generate
the appropriate count sequence.
*/

module ripple_counter (
    input clk,
    input reset,
    output [3:0] q
);

    wire [3:0] d;

    assign d[0] = ~q[0];
    assign d[1] = q[0];
    assign d[2] = q[0] & q[1];
    assign d[3] = q[0] & q[1] & q[2];

    t_ff tff0(.clk(clk), .reset(reset), .d(d[0]), .q(q[0]));
    t_ff tff1(.clk(q[0]), .reset(reset), .d(d[1]), .q(q[1]));
    t_ff tff2(.clk(q[1]), .reset(reset), .d(d[2]), .q(q[2]));
    t_ff tff3(.clk(q[2]), .reset(reset), .d(d[3]), .q(q[3]));

endmodule

module t_ff (
    input clk,
    input reset,
    input d,
    output reg q
);

always @(posedge clk or posedge reset) begin
    if (reset) begin
        q <= 1'b0;
    end else begin
        q <= d;
    end
end

endmodule
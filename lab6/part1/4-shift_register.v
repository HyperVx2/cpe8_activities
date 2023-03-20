/*
This code implements a 4-bit shift register
that shifts in data from the `serial_in`
input on each rising edge of the `clk`
signal. The shifted data is available on the
`parallel_out` output. The shift register
can be reset asynchronously to `0000` by
asserting the active-low reset signal `rst_n`.
*/

module shift_register (input clk, input rst_n, input serial_in,
                        output reg [3:0] parallel_out);

always @ (posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        parallel_out <= 4'b0000;
    end else begin
        parallel_out <= {parallel_out[2:0], serial_in};
    end
end

endmodule
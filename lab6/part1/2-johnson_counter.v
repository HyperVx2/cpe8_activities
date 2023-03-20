/*
This code implements a 2-bit Johnson
counter that counts in the sequence `00`,
`01`, `11`, `10` and then repeats. The
counter is clocked by the rising edge of the
`clk` signal and can be reset
asynchronously to `00` by asserting the
active-low reset signal `rst_n`.
*/

module johnson_counter (input clk, input rst_n, output reg [1:0] q);

always @ (posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        q <= 2'b00;
    end else begin
        q <= {q[0], ~q[1]};
    end
end

endmodule
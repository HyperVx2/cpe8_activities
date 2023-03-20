/*
This code implements a 3-bit binary
comparator that compares the two inputs
`a` and `b` and outputs a value on the `gt`
output indicating which input is greater. If
`a` is greater than `b`, the output `gt` is
set to high (`1'b1`), otherwise it is set to low (`1'b0`).
*/

module comparator3 (input [2:0] a, input [2:0] b, output reg gt);

always @* begin
    if (a > b) begin
        gt <= 1'b1;
    end else begin
        gt <= 1'b0;
    end
end

endmodule
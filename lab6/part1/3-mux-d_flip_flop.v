/*
This code implements a 2-to-1 multiplexer
that selects between the two inputs `d0`and
`d1` based on the value of the select signal
`sel`. When `sel` is high, the output `q`
takes on the value of `d1`, otherwise it takes
on the value of `d0`.
*/

module mux2x1 (input d0, input d1, input sel, output reg q);

always @* begin
    if (sel) begin
        q <= d1;
    end else begin
        q <= d0;
    end
end

endmodule
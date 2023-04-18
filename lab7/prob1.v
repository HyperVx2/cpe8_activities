module mealy_seq_detector (
    input clk, reset,
    input in,
    output reg count
);

localparam s0 = 2'b00, s1 = 2'b01, s2 = 2'b10;
reg [1:0] state_reg, state_next;

always @(posedge clk, posedge reset) begin
    if (reset) begin
        state_reg <= s0;
        count <= 1'b0;
    end
    else begin
        state_reg <= state_next;
    end
end

always @(*) begin
    state_next = state_reg;
    count = 1'b0;
    case (state_reg)
        s0: begin
            if (in == 1'b1) begin
                state_next = s1;
            end
            else begin
                state_next = s0;
            end
        end
        s1: begin
            if (in == 1'b0) begin
                state_next = s2;
            end
            else begin
                state_next = s1;
            end
        end
        s2: begin
            if (in == 1'b1) begin
                state_next = s1;
                count <= 1'b1;
            end
            else begin
                state_next = s0;
            end
        end
    endcase
end

endmodule

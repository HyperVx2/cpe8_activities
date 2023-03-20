module counter (
    input clk,
    input reset,
    output reg [3:0] count,
    output reg reached_desired_value
);

parameter desired_value = 4'd10;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        count <= 4'd0;
        reached_desired_value <= 1'b0;
    end else begin
        count <= count + 1;
        if (count == desired_value) begin
            reached_desired_value <= 1'b1;
        end else begin
            reached_desired_value <= 1'b0;
        end
    end
end

endmodule
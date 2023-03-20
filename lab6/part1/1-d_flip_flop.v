module d_flip_flop(
    input clk,
    input reset,
    output wire [2:0] count
);
    
reg [2:0] d = 0;

always @(posedge clk or negedge reset) begin
    if (reset == 1) begin
        d <= 3'b000;
    end
    else begin
        d <= count + 0;
    end
end

endmodule
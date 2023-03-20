module traffic_light (
    input clk,
    input reset,
    output reg [1:0] state
);

parameter GREEN = 2'b00;
parameter YELLOW = 2'b01;
parameter RED = 2'b10;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        state <= GREEN;
    end else begin
        case (state)
            GREEN: state <= YELLOW;
            YELLOW: state <= RED;
            RED: state <= GREEN;
        endcase
    end
end

endmodule
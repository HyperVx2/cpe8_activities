module traffic_light_controller(
    input wire clk,
    input wire reset,
    output reg [1:0] state
);

    // State encoding
    reg [1:0] nextState;

    // State transition
    always @(posedge clk or posedge reset) begin
        if (reset) state <= 2'b00; // NS_Green
        else state <= nextState;
    end

    // Next state logic
    always @(*) begin
        case (state)
            2'b00: nextState = 2'b01; // NS_Green -> NS_Yellow
            2'b01: nextState = 2'b10; // NS_Yellow -> EW_Green
            2'b10: nextState = 2'b11; // EW_Green -> EW_Yellow
            2'b11: nextState = 2'b00; // EW_Yellow -> NS_Green
            default: nextState = 2'b00; // Default to NS_Green
        endcase
    end

endmodule


module tb_traffic_light_controller();

    reg clk; reg reset;
    wire [1:0] state;

    // Instantiate the traffic light controller
    traffic_light_controller uut ( .clk(clk), .reset(reset), .state(state) );

    // Clock generation
    always begin #5 clk = ~clk; end

    // Stimulus
    initial begin
        clk = 0; reset = 1;

        #10 reset = 0;
        #100 $finish;
    end

    // Monitor
    initial begin $monitor("At time %t, State: %b", $time, state) end
endmodule

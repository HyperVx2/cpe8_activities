module binToOct_encoder(
  input [7:0] binary_in,
  output [3:0] octal_out_1,
  output [3:0] octal_out_2,
  output [3:0] octal_out_3);

    assign octal_out_1[2:0] = binary_in[2:0];
    assign octal_out_2[2:0] = binary_in[5:3];
    assign octal_out_3[2:0] = binary_in[7:6];

endmodule

module 4Digit_7Seg(
  input [3:0] octal_1,
  input [3:0] octal_2,
  input [3:0] octal_3,
  output [6:0] seg_out);

  reg [2:0] octal_values;
  reg [6:0] seg_values;

  integer i;

  initial begin
    octal_values[0] = 3'b000; seg_values[0] = 7'b011_1111; // 0
    octal_values[1] = 3'b001; seg_values[1] = 7'b000_0110; // 1
    octal_values[2] = 3'b010; seg_values[2] = 7'b101_1011; // 2
    octal_values[3] = 3'b011; seg_values[3] = 7'b100_1111; // 3
    octal_values[4] = 3'b100; seg_values[4] = 7'b110_0110; // 4
    octal_values[5] = 3'b101; seg_values[5] = 7'b110_1101; // 5
    octal_values[6] = 3'b110; seg_values[6] = 7'b111_1101; // 6
    octal_values[7] = 3'b111; seg_values[7] = 7'b000_0111; // 7
  end
  




module tb;
  reg binary_in;
  reg octal_out_1, octal_out_2, octal_out_3;

  integer i;

  binToOct_encoder tester (.binary_in(binary_in), .octal_out_1(octal_out_1), .octal_out_2(octal_out_2), .octal_out_3(octal_out_3));

  initial begin
    binary_in <= 0;

    $monitor ("binary_i=%0b octal_out_1=%0b  octal_out_2=%0b octal_out_3=%0b", binary_in, octal_out_1, octal_out_2, octal_out_3);

    for (i = 0; i <= 256; i = i +1) begin
      binary_in = i;
      #10;
    end
  end

endmodule
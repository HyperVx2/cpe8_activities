module binary_to_octal_encoder(
  input [7:0] binary_in,
  output reg [3:0] octal_out,
  output reg [6:0] seg_out);

  reg [2:0] octal_values [0:7];
  reg [6:0] seg_values [0:7];

  integer i;

  initial begin
    // Define the octal and segment values for each input combination
    octal_values[0] = 3'b000; seg_values[0] = 7'b011_1111; // 0
    octal_values[1] = 3'b001; seg_values[1] = 7'b000_0110; // 1
    octal_values[2] = 3'b010; seg_values[2] = 7'b101_1011; // 2
    octal_values[3] = 3'b011; seg_values[3] = 7'b100_1111; // 3
    octal_values[4] = 3'b100; seg_values[4] = 7'b110_0110; // 4
    octal_values[5] = 3'b101; seg_values[5] = 7'b110_1101; // 5
    octal_values[6] = 3'b110; seg_values[6] = 7'b111_1101; // 6
    octal_values[7] = 3'b111; seg_values[7] = 7'b000_0111; // 7
  end

  always @ (*) begin
    // Convert the binary input to an octal output using a loop
    octal_out = 3'b000;
    for (i = 7; i >= 3; i = i - 3) begin
      if (binary_in[i +: 3] != 3'b000) begin
        octal_out = octal_out + 1;
      end
      octal_out = octal_out << 1;
  end

   // Set the segment output based on the octal output using a loop
   seg_out = 7'b111_1111;
   for (i = 0; i < 8; i = i + 1) begin
    if (octal_out == octal_values[i]) begin
      seg_out = seg_values[i];
    end
   end
  end

endmodule
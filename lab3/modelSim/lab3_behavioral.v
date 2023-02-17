module lab3_behavioral (A, B, C, F);
  input A, B, C;
  output reg F;

  always @ (*) begin
    if (~A & ~B | ~A & ~C) begin
      F = 1;
    end
    else begin
      F = 0;
    end
  end
endmodule
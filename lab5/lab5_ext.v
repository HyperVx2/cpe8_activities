/*
module segment7input3 (led, A, B, C);
  output reg led;
  input A, B, C;

  assign [2:0] sig;
  sig[0] = A;
  sig[1] = B;
  sig[2] = C;

  always @ (*)
    case(sig)
        4'b0000 : led=7'b1111110;       //input=0
        4'b0001 : led=7'b0110000;       //input=1
        4'b0010 : led=7'b1101101;       //input=2
        4'b0011 : led=7'b1111001;       //input=3
        4'b0100 : led=7'b0110011;       //input=4
        4'b0101 : led=7'b1011011;       //input=5
        4'b0110 : led=7'b1011111;       //input=6
        4'b0111 : led=7'b1110000;       //input=7
        default : led=7'b0000000;
    endcase


endmodule
*/

module segment7input4 (a, b, c, d, e, f, g, A, B, C, D);
  output a, b, c, d, e, f, g;
  input A, B, C, D;

  assign a = (A | C | (~B & ~D) | (B & D));
  assign b = (A | ~B | (C & D) | (~C & ~D));
  assign c = (B | ~C | D);
  assign d = (A | (~B & C) | (~B & ~D) | (C & ~D) | ((B & ~C) & D));
  assign e = ((~B & ~D) | (C & ~D));
  assign f = (A | (B & ~C) | (B & ~D) + (~C & ~D));
  assign g = (A | (~B & C) | (B & ~C) | (C & ~D));

endmodule

module segment7hex (led, A, B, C, D);
  output reg [1:7] led;
  input A, B, C, D;

  wire [3:0] sig = {D, C, B, A};

    always @ (*)
    case(sig)
        4'b0000 : led=7'b1111110;
        4'b0001 : led=7'b0110000;
        4'b0010 : led=7'b1101101;
        4'b0011 : led=7'b1111001;
        4'b0100 : led=7'b0110011;
        4'b0101 : led=7'b1011011;
        4'b0110 : led=7'b1011111;
        4'b0111 : led=7'b1110000;
        4'b1000 : led=7'b1111111;       //input=8
        4'b1001 : led=7'b1111011;       //input=9
        4'b1010 : led=7'b1110111;       //input=10,output=A
        4'b1011 : led=7'b0011111;       //input=11,output=b
        4'b1100 : led=7'b1001110;       //input=12,output=C
        4'b1101 : led=7'b0111101;       //input=13,output=d
        4'b1110 : led=7'b1001111;       //input=14,output=E
        4'b1111 : led=7'b1000111;       //input=15,output=F
        default : led=7'b0000000;
    endcase

endmodule

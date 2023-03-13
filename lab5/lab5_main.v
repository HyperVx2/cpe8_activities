module bcd2bin(
    input wire [3:0] bcd2, 
    input wire [3:0] bcd1, 
    input wire [3:0] bcd0, 
    output wire [13:0] bin
   );

   assign bin = (bcd2*7'd100) + (bcd1*4'd10) + bcd0;

endmodule

module Dabble(a, b, c, d, A, B, C, D);

  input A, B, C, D;
  output a,  b,  c,  d;

  assign a = (B&D) | (B&C) | A;
  assign b = (B&~C&~D) | (A&D);
  assign c = (~B&C) | (C&D) | (A&~D);
  assign d = (~A&~B&D) | (~B&~C&~D) | (A&~D);
endmodule


module dibbleDouble(Hun_3, Hun_2, Hun_1, Hun_0, Ten_3, Ten_2, Ten_1, Ten_0, Ones_3, Ones_2, Ones_1, Ones_0, a, b, c, d, e, f, g, h);
  output Hun_3,  Hun_2,  Hun_1,  Hun_0,  Ten_3,  Ten_2,  Ten_1,  Ten_0,  Ones_3,  Ones_2,  Ones_1,  Ones_0;
  input a, b, c, d, e, f, g, h;

  wire Dabble_6_out_0, Dabble_6_out_1, Dabble_6_out_2, Dabble_6_out_3, Dabble_4_out_0, Dabble_4_out_1, Dabble_4_out_2, Dabble_4_out_3, Dabble_5_out_0, Dabble_5_out_1, Dabble_5_out_2, Dabble_5_out_3, Dabble_2_out_0, Dabble_2_out_1, Dabble_2_out_2, Dabble_2_out_3, Dabble_3_out_0, Dabble_3_out_1, Dabble_3_out_2, Dabble_3_out_3, Dabble_1_out_0, Dabble_1_out_1, Dabble_1_out_2, Dabble_1_out_3, Dabble_0_out_0, Dabble_0_out_1, Dabble_0_out_2, Dabble_0_out_3, const_1, const_0;
  
  assign const_1 = 1'b0;
  assign const_0 = 1'b0;

  
  assign Hun_3 = const_0;
  assign Hun_2 = const_1;
  assign Hun_1 = Dabble_3_out_0;
  assign Hun_0 = Dabble_5_out_0;

  assign Ten_3 = Dabble_5_out_1;
  assign Ten_2 = Dabble_5_out_2;
  assign Ten_1 = Dabble_5_out_3;
  assign Ten_0 = Dabble_6_out_0;

  assign Ones_3 = Dabble_6_out_1;
  assign Ones_2 = Dabble_6_out_2;
  assign Ones_1 = Dabble_6_out_3;
  assign Ones_0 = h;
  
  Dabble Dabble_6(Dabble_6_out_0, Dabble_6_out_1, Dabble_6_out_2, Dabble_6_out_3, Dabble_4_out_1, Dabble_4_out_2, Dabble_4_out_3, g);
  Dabble Dabble_5(Dabble_5_out_0, Dabble_5_out_1, Dabble_5_out_2, Dabble_5_out_3, Dabble_3_out_1, Dabble_3_out_2, Dabble_3_out_3, Dabble_4_out_0);
  Dabble Dabble_4(Dabble_4_out_0, Dabble_4_out_1, Dabble_4_out_2, Dabble_4_out_3, Dabble_2_out_1, Dabble_2_out_2, Dabble_2_out_3, f);
  Dabble Dabble_3(Dabble_3_out_0, Dabble_3_out_1, Dabble_3_out_2, Dabble_3_out_3, , Dabble_0_out_0, Dabble_1_out_0, Dabble_2_out_0);
  Dabble Dabble_2(Dabble_2_out_0, Dabble_2_out_1, Dabble_2_out_2, Dabble_2_out_3, Dabble_1_out_1, Dabble_1_out_2, Dabble_1_out_3, e);
  Dabble Dabble_1(Dabble_1_out_0, Dabble_1_out_1, Dabble_1_out_2, Dabble_1_out_3, Dabble_0_out_1, Dabble_0_out_2, Dabble_0_out_3, d);
  Dabble Dabble_0(Dabble_0_out_0, Dabble_0_out_1, Dabble_0_out_2, Dabble_0_out_3, , a, b, c);
endmodule


module Main(H, G, F, E, D, C, B, A, Selector, Point);
  input H, G, F, E, D, C, B, A, Point;
  input [1:0] Selector;
  wire mux_6_out_0, mux_6_out_1, mux_6_out_2, mux_6_out_3, mux_6_out_4, mux_6_out_5, mux_6_out_6, mux_4_out_0, mux_4_out_1, mux_4_out_2, mux_4_out_3, mux_4_out_4, mux_4_out_5, mux_4_out_6, dibbleDouble_10_out_0, dibbleDouble_10_out_1, dibbleDouble_10_out_2, dibbleDouble_10_out_3, dibbleDouble_10_out_4, dibbleDouble_10_out_5, dibbleDouble_10_out_6, dibbleDouble_10_out_7, dibbleDouble_10_out_8, dibbleDouble_10_out_9, dibbleDouble_10_out_10, dibbleDouble_10_out_11, segment7input4_11_out_0, segment7input4_11_out_1, segment7input4_11_out_2, segment7input4_11_out_3, segment7input4_11_out_4, segment7input4_11_out_5, segment7input4_11_out_6, segment7input4_12_out_0, segment7input4_12_out_1, segment7input4_12_out_2, segment7input4_12_out_3, segment7input4_12_out_4, segment7input4_12_out_5, segment7input4_12_out_6, segment7input4_13_out_0, segment7input4_13_out_1, segment7input4_13_out_2, segment7input4_13_out_3, segment7input4_13_out_4, segment7input4_13_out_5, segment7input4_13_out_6, bin2hex_8_out_0, bin2hex_8_out_1, bin2hex_8_out_2, bin2hex_8_out_3, bin2hex_8_out_4, bin2hex_8_out_5, bin2hex_8_out_6, bin2hex_8_out_7, segment7hex_1_out_0, segment7hex_1_out_1, segment7hex_1_out_2, segment7hex_1_out_3, segment7hex_1_out_4, segment7hex_1_out_5, segment7hex_1_out_6, segment7hex_9_out_0, segment7hex_9_out_1, segment7hex_9_out_2, segment7hex_9_out_3, segment7hex_9_out_4, segment7hex_9_out_5, segment7hex_9_out_6, bin2oct_0_out_0, bin2oct_0_out_1, bin2oct_0_out_2, bin2oct_0_out_3, bin2oct_0_out_4, bin2oct_0_out_5, bin2oct_0_out_6, bin2oct_0_out_7, bin2oct_0_out_8, segment7input3_3_out_0, segment7input3_3_out_1, segment7input3_3_out_2, segment7input3_3_out_3, segment7input3_3_out_4, segment7input3_3_out_5, segment7input3_3_out_6, segment7input3_2_out_0, segment7input3_2_out_1, segment7input3_2_out_2, segment7input3_2_out_3, segment7input3_2_out_4, segment7input3_2_out_5, segment7input3_2_out_6, segment7input3_1_out_0, segment7input3_1_out_1, segment7input3_1_out_2, segment7input3_1_out_3, segment7input3_1_out_4, segment7input3_1_out_5, segment7input3_1_out_6;
  
      always @ (*)
        $display("SevenSegDisplay:SevenSegDisplay_2.abcdefg. = %b%b%b%b%b%b%b%b}",
                 mux_4_out_0, mux_4_out_1, mux_4_out_2, mux_4_out_3, mux_4_out_4, mux_4_out_5, mux_4_out_6, Point);
  
      always @ (*)
        $display("SevenSegDisplay:SevenSegDisplay_0.abcdefg. = %b%b%b%b%b%b%b%b}",
                 mux_6_out_0, mux_6_out_1, mux_6_out_2, mux_6_out_3, mux_6_out_4, mux_6_out_5, mux_6_out_6, Point);
  
      always @ (*)
        $display("SevenSegDisplay:SevenSegDisplay_1.abcdefg. = %b%b%b%b%b%b%b%b}",
                 mux_6_out_0, mux_6_out_1, mux_6_out_2, mux_6_out_3, mux_6_out_4, mux_6_out_5, mux_6_out_6, Point);

  bin2oct bin2oct_0(bin2oct_0_out_0, bin2oct_0_out_1, bin2oct_0_out_2, bin2oct_0_out_3, bin2oct_0_out_4, bin2oct_0_out_5, bin2oct_0_out_6, bin2oct_0_out_7, bin2oct_0_out_8, C, B, A, F, E, D, G, H);
  bin2hex bin2hex_8(bin2hex_8_out_0, bin2hex_8_out_1, bin2hex_8_out_2, bin2hex_8_out_3, bin2hex_8_out_4, bin2hex_8_out_5, bin2hex_8_out_6, bin2hex_8_out_7, C, B, A, H, G, F, E, D);

  mux mux_7(mux_6_out_0, mux_6_out_1, mux_6_out_2, mux_6_out_3, mux_6_out_4, mux_6_out_5, mux_6_out_6, segment7input3_3_out_6, segment7input3_3_out_5, segment7input3_3_out_4, segment7input3_3_out_3, segment7input3_3_out_2, segment7input3_3_out_1, segment7input3_3_out_0, , , , , , , , segment7input4_13_out_6, segment7input4_13_out_5, segment7input4_13_out_4, segment7input4_13_out_3, segment7input4_13_out_2, segment7input4_13_out_1, segment7input4_13_out_0, Selector);
  mux mux_6(mux_6_out_0, mux_6_out_1, mux_6_out_2, mux_6_out_3, mux_6_out_4, mux_6_out_5, mux_6_out_6, segment7input3_2_out_6, segment7input3_2_out_5, segment7input3_2_out_4, segment7input3_2_out_3, segment7input3_2_out_2, segment7input3_2_out_1, segment7input3_2_out_0, segment7hex_9_out_1, segment7hex_9_out_0, segment7hex_9_out_6, segment7hex_9_out_5, segment7hex_9_out_4, segment7hex_9_out_3, segment7hex_9_out_2, segment7input4_12_out_6, segment7input4_12_out_5, segment7input4_12_out_4, segment7input4_12_out_3, segment7input4_12_out_2, segment7input4_12_out_1, segment7input4_12_out_0, Selector);
  mux mux_4(mux_4_out_0, mux_4_out_1, mux_4_out_2, mux_4_out_3, mux_4_out_4, mux_4_out_5, mux_4_out_6, segment7input3_1_out_6, segment7input3_1_out_5, segment7input3_1_out_4, segment7input3_1_out_3, segment7input3_1_out_2, segment7input3_1_out_1, segment7input3_1_out_0, segment7hex_1_out_1, segment7hex_1_out_0, segment7hex_1_out_6, segment7hex_1_out_5, segment7hex_1_out_4, segment7hex_1_out_3, segment7hex_1_out_2, segment7input4_11_out_6, segment7input4_11_out_5, segment7input4_11_out_4, segment7input4_11_out_3, segment7input4_11_out_2, segment7input4_11_out_1, segment7input4_11_out_0, Selector);
  
  dibbleDouble dibbleDouble_10(dibbleDouble_10_out_0, dibbleDouble_10_out_1, dibbleDouble_10_out_2, dibbleDouble_10_out_3, dibbleDouble_10_out_4, dibbleDouble_10_out_5, dibbleDouble_10_out_6, dibbleDouble_10_out_7, dibbleDouble_10_out_8, dibbleDouble_10_out_9, dibbleDouble_10_out_10, dibbleDouble_10_out_11, H, G, F, E, D, C, B, A);
  
  segment7input3 segment7input3_3(segment7input3_3_out_0, segment7input3_3_out_1, segment7input3_3_out_2, segment7input3_3_out_3, segment7input3_3_out_4, segment7input3_3_out_5, segment7input3_3_out_6, bin2oct_0_out_8, bin2oct_0_out_7, bin2oct_0_out_6);
  segment7input3 segment7input3_2(segment7input3_2_out_0, segment7input3_2_out_1, segment7input3_2_out_2, segment7input3_2_out_3, segment7input3_2_out_4, segment7input3_2_out_5, segment7input3_2_out_6, bin2oct_0_out_3, bin2oct_0_out_4, bin2oct_0_out_5);
  segment7input3 segment7input3_1(segment7input3_1_out_0, segment7input3_1_out_1, segment7input3_1_out_2, segment7input3_1_out_3, segment7input3_1_out_4, segment7input3_1_out_5, segment7input3_1_out_6, bin2oct_0_out_0, bin2oct_0_out_1, bin2oct_0_out_2);

  segment7input4 segment7input4_11(segment7input4_11_out_0, segment7input4_11_out_1, segment7input4_11_out_2, segment7input4_11_out_3, segment7input4_11_out_4, segment7input4_11_out_5, segment7input4_11_out_6, dibbleDouble_10_out_8, dibbleDouble_10_out_9, dibbleDouble_10_out_10, dibbleDouble_10_out_11);
  segment7input4 segment7input4_12(segment7input4_12_out_0, segment7input4_12_out_1, segment7input4_12_out_2, segment7input4_12_out_3, segment7input4_12_out_4, segment7input4_12_out_5, segment7input4_12_out_6, dibbleDouble_10_out_4, dibbleDouble_10_out_5, dibbleDouble_10_out_6, dibbleDouble_10_out_7);
  segment7input4 segment7input4_13(segment7input4_13_out_0, segment7input4_13_out_1, segment7input4_13_out_2, segment7input4_13_out_3, segment7input4_13_out_4, segment7input4_13_out_5, segment7input4_13_out_6, dibbleDouble_10_out_0, dibbleDouble_10_out_1, dibbleDouble_10_out_2, dibbleDouble_10_out_3);
  
  segment7hex segment7hex_1(segment7hex_1_out_0, segment7hex_1_out_1, segment7hex_1_out_2, segment7hex_1_out_3, segment7hex_1_out_4, segment7hex_1_out_5, segment7hex_1_out_6, bin2hex_8_out_7, bin2hex_8_out_0, bin2hex_8_out_1, bin2hex_8_out_2);
  segment7hex segment7hex_9(segment7hex_9_out_0, segment7hex_9_out_1, segment7hex_9_out_2, segment7hex_9_out_3, segment7hex_9_out_4, segment7hex_9_out_5, segment7hex_9_out_6, bin2hex_8_out_3, bin2hex_8_out_4, bin2hex_8_out_5, bin2hex_8_out_6);

endmodule

module Multiplexer4(out, in0, in1, in2, in3, sel);
  parameter WIDTH = 1;
  output reg [WIDTH-1:0] out;
  input [WIDTH-1:0] in0, in1, in2, in3;
  input [1:0] sel;
  
  always @ (*)
    case (sel)
      0 : out = in0;
      1 : out = in1;
      2 : out = in2;
      3 : out = in3;
    endcase

endmodule

module mux(a, b, c, d, e, f, g, G1, F1, E1, D1, C1, B1, A1, G2, F2, E2, D2, C2, B2, A2, G3, F3, E3, D3, C3, B3, A3, Selector);
  output a, b, c, d, e, f, g;
  input G1, F1, E1, D1, C1, B1, A1, G2, F2, E2, D2, C2, B2, A2, G3, F3, E3, D3, C3, B3, A3;
  input [1:0] Selector;
  wire G_out, F_out, E_out, D_out, C_out, B_out, A_out;

  Multiplexer4 G(G_out, G1, G2, G3, Selector);
  assign g = G_out;
  Multiplexer4 F(F_out, F1, F2, F3, Selector);
  assign f = F_out;
  Multiplexer4 E(E_out, E1, E2, E3, Selector);
  assign e = E_out;
  Multiplexer4 D(D_out, D1, D2, D3, Selector);
  assign d = D_out;
  Multiplexer4 C(C_out, C1, C2, C3, Selector);
  assign c = C_out;
  Multiplexer4 B(B_out, B1, B2, B3, Selector);
  assign b = B_out;
  Multiplexer4 A(A_out, A1, A2, A3, Selector);
  assign a = A_out;

endmodule

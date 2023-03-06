/**
 * This is an autogenerated netlist code from CircuitVerse. Verilog Code can be
 * tested on https://www.edaplayground.com/ using Icarus Verilog 0.9.7. This is an
 * experimental module and some manual changes make need to be done in order for
 * this to work.
 *
 * If you have any ideas/suggestions or bug fixes, raise an issue
 * on https://github.com/CircuitVerse/CircuitVerse/issues/new/choose
 */

/*
  Element Usage Report
    Input - 83 times
    OrGate - 51 times
    Output - 76 times
    AndGate - 72 times
    NotGate - 32 times
    ConstantVal - 3 times
    Multiplexer - 7 times
    NorGate - 5 times
    NandGate - 2 times
    SubCircuit - 21 times
    SevenSegDisplay - 3 times
*/

/*
  Usage Instructions and Tips
    Labels - Ensure unique label names and avoid using verilog keywords
    Warnings - Connect all optional inputs to remove warnings
*/

// Sample Testbench Code - Uncomment to use

/*
module TestBench();

  reg A, B, C, D, A1, A2, A3, A4, B1, B2, B3, B4, H, G, F, E, Point;
  reg [1:0] Selector;

  wire a, b, c, d, e, f, g, A1o, A20, A3o, A4o, B1o, B2o, B3o, B40;

  bcd2bin DUT0(a, b, c, d, e, f, g, A, B, C, D);

  bin2dec DUT1(A1o, A20, A3o, A4o, B1o, B2o, B3o, B40, A1, A2, A3, A4, B1, B2, B3, B4);

  main DUT2(H, G, F, E, D, C, B, A, Selector, Point);

  initial begin
    A = 0;
    B = 0;
    C = 0;
    D = 0;
    A1 = 0;
    A2 = 0;
    A3 = 0;
    A4 = 0;
    B1 = 0;
    B2 = 0;
    B3 = 0;
    B4 = 0;
    H = 0;
    G = 0;
    F = 0;
    E = 0;
    Selector = 0;
    Point = 0;

    #15
    $display("a = %b", a);
    $display("b = %b", b);
    $display("c = %b", c);
    $display("d = %b", d);
    $display("e = %b", e);
    $display("f = %b", f);
    $display("g = %b", g);
    $display("A1o = %b", A1o);
    $display("A20 = %b", A20);
    $display("A3o = %b", A3o);
    $display("A4o = %b", A4o);
    $display("B1o = %b", B1o);
    $display("B2o = %b", B2o);
    $display("B3o = %b", B3o);
    $display("B40 = %b", B40);

    #10
    $display("a = %b", a);
    $display("b = %b", b);
    $display("c = %b", c);
    $display("d = %b", d);
    $display("e = %b", e);
    $display("f = %b", f);
    $display("g = %b", g);
    $display("A1o = %b", A1o);
    $display("A20 = %b", A20);
    $display("A3o = %b", A3o);
    $display("A4o = %b", A4o);
    $display("B1o = %b", B1o);
    $display("B2o = %b", B2o);
    $display("B3o = %b", B3o);
    $display("B40 = %b", B40);

    $finish;

  end
endmodule

*/

module bcd2bin(a, b, c, d, e, f, g, A, B, C, D);
  output a,  b,  c,  d,  e,  f,  g;
  input A, B, C, D;
  wire or_2_out, and_6_out, or_3_out, and_3_out, or_1_out, and_1_out, or_0_out, not_3_out, and_15_out, or_6_out, and_12_out, or_5_out, and_10_out, and_9_out, or_4_out, and_8_out, and_7_out, and_4_out, and_2_out, and_0_out, and_13_out, and_5_out, not_2_out, and_14_out, and_11_out, not_1_out, not_0_out;
  assign or_2_out = not_2_out | D | B;
  assign c = or_2_out;
  assign and_6_out = B & not_2_out & D;
  assign or_3_out = and_4_out | and_5_out | and_6_out | and_7_out | A;
  assign d = or_3_out;
  assign and_3_out = C & D;
  assign or_1_out = not_1_out | and_2_out | and_3_out;
  assign b = or_1_out;
  assign and_1_out = B & D;
  assign or_0_out = and_0_out | C | and_1_out | A;
  assign a = or_0_out;
  assign not_3_out = ~D;
  assign and_15_out = C & not_3_out;
  assign or_6_out = and_13_out | and_14_out | and_15_out | A;
  assign g = or_6_out;
  assign and_12_out = B & not_3_out;
  assign or_5_out = and_10_out | and_11_out | and_12_out | A;
  assign f = or_5_out;
  assign and_10_out = not_2_out & not_3_out;
  assign and_9_out = C & not_3_out;
  assign or_4_out = and_8_out | and_9_out;
  assign e = or_4_out;
  assign and_8_out = not_1_out & not_3_out;
  assign and_7_out = C & not_3_out;
  assign and_4_out = not_1_out & not_3_out;
  assign and_2_out = not_2_out & not_3_out;
  assign and_0_out = not_1_out & not_3_out;
  assign and_13_out = not_1_out & C;
  assign and_5_out = not_1_out & C;
  assign not_2_out = ~C;
  assign and_14_out = B & not_2_out;
  assign and_11_out = B & not_2_out;
  assign not_1_out = ~B;
  assign not_0_out = ~A;
endmodule

module segment7input3(a, b, c, d, e, f, g, A, B, C);
  output a,  b,  c,  d,  e,  f,  g;
  input A, B, C;
  wire \AB'C_out , \d_=_A'C'+A'B+BC'+AB'C_out , \c_=_A+B'+C_out , BC_out, \b_=_A'+B'C'+BC_out , AC_out, \a_=_B+A'C'+AC_out , \C"_out , \AC'_out , \f_=_AB'+AC'+B'C'_out , \BC'_out , \g_=_AB'+A'B+BC'_out , \e_=_A'C'+BC'_out , \B'C'_out , \A'C'_out , \A'B_out , \B'_out , \AB'_out , \A'_out ;
  assign \AB'C_out  = A & \B'_out  & C;
  assign \d_=_A'C'+A'B+BC'+AB'C_out  = \A'C'_out  | \AB'C_out  | \A'B_out  | \BC'_out ;
  assign d = \d_=_A'C'+A'B+BC'+AB'C_out ;
  assign \c_=_A+B'+C_out  = A | \B'_out  | C;
  assign c = \c_=_A+B'+C_out ;
  assign BC_out = B & C;
  assign \b_=_A'+B'C'+BC_out  = BC_out | \B'C'_out  | \A'_out ;
  assign b = \b_=_A'+B'C'+BC_out ;
  assign AC_out = A & C;
  assign \a_=_B+A'C'+AC_out  = AC_out | \A'C'_out  | B;
  assign a = \a_=_B+A'C'+AC_out ;
  assign \C"_out  = ~C;
  assign \AC'_out  = A & \C"_out ;
  assign \f_=_AB'+AC'+B'C'_out  = \B'C'_out  | \AB'_out  | \AC'_out ;
  assign f = \f_=_AB'+AC'+B'C'_out ;
  assign \BC'_out  = B & \C"_out ;
  assign \g_=_AB'+A'B+BC'_out  = \AB'_out  | \A'B_out  | \BC'_out ;
  assign g = \g_=_AB'+A'B+BC'_out ;
  assign \e_=_A'C'+BC'_out  = \A'C'_out  | \BC'_out ;
  assign e = \e_=_A'C'+BC'_out ;
  assign \B'C'_out  = \B'_out  & \C"_out ;
  assign \A'C'_out  = \A'_out  & \C"_out ;
  assign \A'B_out  = \A'_out  & B;
  assign \B'_out  = ~B;
  assign \AB'_out  = A & \B'_out ;
  assign \A'_out  = ~A;
endmodule

module segment7input4(a, b, c, d, e, f, g, A, B, C, D);
  output a,  b,  c,  d,  e,  f,  g;
  input A, B, C, D;
  wire \C'+D+B+AD'_out , \AD'_out , \BC'D_out , \A+BC'D+CD'+B'C_out , \A+BC'D+CD'+B'C+B'D'_out , CD_out, \A+C'D'+CD+A'B'_out , BD_out, \A+C+BD+B'D'_out , \D"_out , \BD'_out , \A+C'D'+BC'+BD'_out , \CD'_out , \A+BC'+CD'+B'C_out , \AC+AB+CD'+B'D'_out , \C"D"_out , \B'D'_out , AC_out, \B'C_out , \C"_out , \BC'_out , AB_out, \B'_out , \A'B"_out , \A'_out ;
  assign \C'+D+B+AD'_out  = \C"_out  | D | B | \AD'_out ;
  assign c = \C'+D+B+AD'_out ;
  assign \AD'_out  = A & D;
  assign \BC'D_out  = \BC'_out  & D;
  assign \A+BC'D+CD'+B'C_out  = A | \BC'D_out  | \CD'_out  | \B'C_out ;
  assign \A+BC'D+CD'+B'C+B'D'_out  = \B'D'_out  | \A+BC'D+CD'+B'C_out ;
  assign d = \A+BC'D+CD'+B'C+B'D'_out ;
  assign CD_out = C & D;
  assign \A+C'D'+CD+A'B'_out  = A | \C"D"_out  | CD_out | \A'B"_out ;
  assign b = \A+C'D'+CD+A'B'_out ;
  assign BD_out = B & D;
  assign \A+C+BD+B'D'_out  = A | C | BD_out | \B'D'_out ;
  assign a = \A+C+BD+B'D'_out ;
  assign \D"_out  = ~D;
  assign \BD'_out  = B & \D"_out ;
  assign \A+C'D'+BC'+BD'_out  = A | \C"D"_out  | \BC'_out  | \BD'_out ;
  assign f = \A+C'D'+BC'+BD'_out ;
  assign \CD'_out  = C & \D"_out ;
  assign \A+BC'+CD'+B'C_out  = A | \BC'_out  | \CD'_out  | \B'C_out ;
  assign g = \A+BC'+CD'+B'C_out ;
  assign \AC+AB+CD'+B'D'_out  = AC_out | AB_out | \CD'_out  | \B'D'_out ;
  assign e = \AC+AB+CD'+B'D'_out ;
  assign \C"D"_out  = \C"_out  & \D"_out ;
  assign \B'D'_out  = \B'_out  & \D"_out ;
  assign AC_out = A & C;
  assign \B'C_out  = \B'_out  & C;
  assign \C"_out  = ~C;
  assign \BC'_out  = B & \C"_out ;
  assign AB_out = A & B;
  assign \B'_out  = ~B;
  assign \A'B"_out  = \A'_out  & \B'_out ;
  assign \A'_out  = ~A;
endmodule

module bin2oct(a10, a20, a30, b10, b20, b30, c10, c20, c30, a1, a2, a3, b1, b2, b3, c1, c2);
  output a10,  a20,  a30,  b10,  b20,  b30,  c10,  c20,  c30;
  input a1, a2, a3, b1, b2, b3, c1, c2;
  wire c3;
  assign c20 = c2;
  assign c10 = c1;
  assign b30 = b3;
  assign b20 = b2;
  assign b10 = b1;
  assign a30 = a3;
  assign a20 = a2;
  assign a10 = a1;
  assign c3 = 1'b0;
  assign c30 = c3;
endmodule

module mux(A, B, C, D, E, F, G, G1, F1, E1, D1, C1, B1, A1, G2, F2, E2, D2, C2, B2, A2, G3, F3, E3, D3, C3, B3, A3, Selector);
  output A,  B,  C,  D,  E,  F,  G;
  input G1, F1, E1, D1, C1, B1, A1, G2, F2, E2, D2, C2, B2, A2, G3, F3, E3, D3, C3, B3, A3;
  input [1:0] Selector;
  wire G_out, F_out, E_out, D_out, C_out, B_out, A_out;
  Multiplexer4 G(G_out, , G1, G2, G3, Selector);
  assign G = G_out;
  Multiplexer4 F(F_out, , F1, F2, F3, Selector);
  assign F = F_out;
  Multiplexer4 E(E_out, , E1, E2, E3, Selector);
  assign E = E_out;
  Multiplexer4 D(D_out, , D1, D2, D3, Selector);
  assign D = D_out;
  Multiplexer4 C(C_out, , C1, C2, C3, Selector);
  assign C = C_out;
  Multiplexer4 B(B_out, , B1, B2, B3, Selector);
  assign B = B_out;
  Multiplexer4 A(A_out, , A1, A2, A3, Selector);
  assign A = A_out;
endmodule

module segment7hex(f, g, a, b, c, d, e, A, B, C, D);
  output f,  g,  a,  b,  c,  d,  e;
  input A, B, C, D;
  wire nor_1_out, or_2_out, or_4_out, BD_out, or_1_out, and_2_out, nand_1_out, and_23_out, or_24_out, or_22_out, and_21_out, or_23_out, not_14_out, or_18_out, and_19_out, or_20_out, or_21_out, not_12_out, and_17_out, or_17_out, not_10_out, and_15_out, or_13_out, or_14_out, \C'D_out , and_16_out, or_10_out, or_11_out, or_8_out, or_9_out, and_9_out, and_5_out, and_6_out, or_7_out, nand_0_out, and_8_out, or_6_out, CD_out, \(C+D)'+CD_out , and_12_out, and_7_out, \(C+D)'_out , \D´_out , or_0_out, and_0_out, or_3_out, or_16_out, and_18_out, or_15_out, and_13_out, or_12_out, not_7_out, not_5_out, not_4_out, nor_4_out, and_22_out, or_19_out, and_20_out, nor_3_out, and_3_out, \(B+C)'_out , not_16_out, not_15_out, not_13_out, and_14_out, not_9_out, and_11_out, not_6_out, not_3_out, not_11_out, not_8_out, \A'_out , not_1_out;
  assign nor_1_out = ~(D | B);
  assign or_2_out = nor_1_out | and_2_out;
  assign or_4_out = or_2_out | or_3_out;
  assign a = or_4_out;
  assign BD_out = D & B;
  assign or_1_out = BD_out | C;
  assign and_2_out = or_1_out & not_1_out;
  assign nand_1_out = ~(B & D);
  assign and_23_out = nand_1_out & C;
  assign or_24_out = or_23_out | and_23_out;
  assign g = or_24_out;
  assign or_22_out = not_16_out | D;
  assign and_21_out = or_22_out & A;
  assign or_23_out = and_21_out | and_22_out;
  assign not_14_out = ~D;
  assign or_18_out = nor_3_out | not_14_out;
  assign and_19_out = or_18_out & B;
  assign or_20_out = and_19_out | and_20_out;
  assign or_21_out = or_20_out | \(C+D)'_out ;
  assign f = or_21_out;
  assign not_12_out = ~D;
  assign and_17_out = not_12_out & or_15_out;
  assign or_17_out = and_17_out | and_18_out;
  assign e = or_17_out;
  assign not_10_out = ~D;
  assign and_15_out = not_10_out & or_12_out;
  assign or_13_out = and_12_out | and_15_out;
  assign or_14_out = or_13_out | and_16_out;
  assign d = or_14_out;
  assign \C'D_out  = not_7_out & D;
  assign and_16_out = \C'D_out  & B;
  assign or_10_out = \C'D_out  | and_11_out;
  assign or_11_out = and_9_out | or_10_out;
  assign c = or_11_out;
  assign or_8_out = not_5_out | D;
  assign or_9_out = or_8_out | A;
  assign and_9_out = or_9_out & not_6_out;
  assign and_5_out = A & D;
  assign and_6_out = and_5_out & not_4_out;
  assign or_7_out = or_6_out | and_6_out;
  assign b = or_7_out;
  assign nand_0_out = ~(C & D);
  assign and_8_out = not_3_out & nand_0_out;
  assign or_6_out = and_7_out | and_8_out;
  assign CD_out = C & D;
  assign \(C+D)'+CD_out  = \(C+D)'_out  | CD_out;
  assign and_12_out = \(C+D)'+CD_out  & not_9_out;
  assign and_7_out = \(C+D)'+CD_out  & \A'_out ;
  assign \(C+D)'_out  = ~(C | D);
  assign \D´_out  = ~D;
  assign or_0_out = \(B+C)'_out  | \D´_out ;
  assign and_0_out = A & or_0_out;
  assign or_3_out = and_0_out | and_3_out;
  assign or_16_out = B | C;
  assign and_18_out = or_16_out & A;
  assign or_15_out = not_13_out | C;
  assign and_13_out = not_11_out & C;
  assign or_12_out = and_13_out | and_14_out;
  assign not_7_out = ~C;
  assign not_5_out = ~C;
  assign not_4_out = ~C;
  assign nor_4_out = ~(A | C);
  assign and_22_out = nor_4_out & B;
  assign or_19_out = not_15_out | C;
  assign and_20_out = or_19_out & A;
  assign nor_3_out = ~(A | C);
  assign and_3_out = B & C;
  assign \(B+C)'_out  = ~(B | C);
  assign not_16_out = ~B;
  assign not_15_out = ~B;
  assign not_13_out = ~B;
  assign and_14_out = A & B;
  assign not_9_out = ~B;
  assign and_11_out = not_8_out & B;
  assign not_6_out = ~B;
  assign not_3_out = ~B;
  assign not_11_out = ~A;
  assign not_8_out = ~A;
  assign \A'_out  = ~A;
  assign not_1_out = ~A;
endmodule

module bin2hex(a2o, a3o, a4o, b1o, b2o, b3o, b4o, a1o, a2, a3, a4, b1, b2, b3, b4, a1);
  output a2o,  a3o,  a4o,  b1o,  b2o,  b3o,  b4o,  a1o;
  input a2, a3, a4, b1, b2, b3, b4, a1;
  assign a1o = a1;
  assign b4o = b4;
  assign b3o = b3;
  assign b2o = b2;
  assign b1o = b1;
  assign a4o = a4;
  assign a3o = a3;
  assign a2o = a2;
endmodule

module bin2dec(A1o, A20, A3o, A4o, B1o, B2o, B3o, B40, A1, A2, A3, A4, B1, B2, B3, B4);
  output A1o,  A20,  A3o,  A4o,  B1o,  B2o,  B3o,  B40;
  input A1, A2, A3, A4, B1, B2, B3, B4;
  assign B40 = B4;
  assign B3o = B3;
  assign B2o = B2;
  assign B1o = B1;
  assign A4o = A4;
  assign A3o = A3;
  assign A20 = A2;
  assign A1o = A1;
endmodule

module dabble(a, b, c, d, A, B, C, D);
  output a,  b,  c,  d;
  input A, B, C, D;
  wire and_7_out, or_3_out, and_5_out, or_2_out, and_3_out, or_1_out, and_0_out, or_0_out, not_3_out, and_9_out, and_8_out, and_6_out, and_2_out, and_4_out, and_1_out, not_2_out, not_1_out, not_0_out;
  assign and_7_out = not_0_out & not_1_out & D;
  assign or_3_out = and_7_out | and_8_out | and_9_out;
  assign d = or_3_out;
  assign and_5_out = C & D;
  assign or_2_out = and_4_out | and_5_out | and_6_out;
  assign c = or_2_out;
  assign and_3_out = A & D;
  assign or_1_out = and_2_out | and_3_out;
  assign b = or_1_out;
  assign and_0_out = B & D;
  assign or_0_out = and_0_out | and_1_out | A;
  assign a = or_0_out;
  assign not_3_out = ~D;
  assign and_9_out = A & not_3_out;
  assign and_8_out = B & C & not_3_out;
  assign and_6_out = A & not_3_out;
  assign and_2_out = B & not_2_out & not_3_out;
  assign and_4_out = not_1_out & C;
  assign and_1_out = B & C;
  assign not_2_out = ~C;
  assign not_1_out = ~B;
  assign not_0_out = ~A;
endmodule


module dibbleDouble(Hun_3, Hun_2, Hun_1, Hun_0, Ten_3, Ten_2, Ten_1, Ten_0, Ones_3, Ones_2, Ones_1, Ones_0, A, B, C, D, E, F, G, H);
  output Hun_3,  Hun_2,  Hun_1,  Hun_0,  Ten_3,  Ten_2,  Ten_1,  Ten_0,  Ones_3,  Ones_2,  Ones_1,  Ones_0;
  input A, B, C, D, E, F, G, H;
  wire dabble_6_out_0, dabble_6_out_1, dabble_6_out_2, dabble_6_out_3, dabble_4_out_0, dabble_4_out_1, dabble_4_out_2, dabble_4_out_3, dabble_5_out_0, dabble_5_out_1, dabble_5_out_2, dabble_5_out_3, dabble_2_out_0, dabble_2_out_1, dabble_2_out_2, dabble_2_out_3, dabble_3_out_0, dabble_3_out_1, dabble_3_out_2, dabble_3_out_3, dabble_1_out_0, dabble_1_out_1, dabble_1_out_2, dabble_1_out_3, dabble_0_out_0, dabble_0_out_1, dabble_0_out_2, dabble_0_out_3, const_1, const_0;
  assign Ones_0 = H;
  dabble dabble_6(dabble_6_out_0, dabble_6_out_1, dabble_6_out_2, dabble_6_out_3, dabble_4_out_1, dabble_4_out_2, dabble_4_out_3, G);
  assign Ones_1 = dabble_6_out_3;
  assign Ones_2 = dabble_6_out_2;
  assign Ones_3 = dabble_6_out_1;
  assign Ten_0 = dabble_6_out_0;
  dabble dabble_4(dabble_4_out_0, dabble_4_out_1, dabble_4_out_2, dabble_4_out_3, dabble_2_out_1, dabble_2_out_2, dabble_2_out_3, F);
  dabble dabble_5(dabble_5_out_0, dabble_5_out_1, dabble_5_out_2, dabble_5_out_3, dabble_3_out_1, dabble_3_out_2, dabble_3_out_3, dabble_4_out_0);
  assign Ten_1 = dabble_5_out_3;
  assign Ten_2 = dabble_5_out_2;
  assign Ten_3 = dabble_5_out_1;
  assign Hun_0 = dabble_5_out_0;
  dabble dabble_2(dabble_2_out_0, dabble_2_out_1, dabble_2_out_2, dabble_2_out_3, dabble_1_out_1, dabble_1_out_2, dabble_1_out_3, E);
  dabble dabble_3(dabble_3_out_0, dabble_3_out_1, dabble_3_out_2, dabble_3_out_3, , dabble_0_out_0, dabble_1_out_0, dabble_2_out_0);
  assign Hun_1 = dabble_3_out_0;
  dabble dabble_1(dabble_1_out_0, dabble_1_out_1, dabble_1_out_2, dabble_1_out_3, dabble_0_out_1, dabble_0_out_2, dabble_0_out_3, D);
  dabble dabble_0(dabble_0_out_0, dabble_0_out_1, dabble_0_out_2, dabble_0_out_3, , A, B, C);
  assign const_1 = 1'b0;
  assign Hun_2 = const_1;
  assign const_0 = 1'b0;
  assign Hun_3 = const_0;
endmodule









module main(H, G, F, E, D, C, B, A, Selector, Point);
  input H, G, F, E, D, C, B, A, Point;
  input [1:0] Selector;
  wire Multiplexer_Module_6_out_0, Multiplexer_Module_6_out_1, Multiplexer_Module_6_out_2, Multiplexer_Module_6_out_3, Multiplexer_Module_6_out_4, Multiplexer_Module_6_out_5, Multiplexer_Module_6_out_6, Multiplexer_Module_5_out_0, Multiplexer_Module_5_out_1, Multiplexer_Module_5_out_2, Multiplexer_Module_5_out_3, Multiplexer_Module_5_out_4, Multiplexer_Module_5_out_5, Multiplexer_Module_5_out_6, Multiplexer_Module_4_out_0, Multiplexer_Module_4_out_1, Multiplexer_Module_4_out_2, Multiplexer_Module_4_out_3, Multiplexer_Module_4_out_4, Multiplexer_Module_4_out_5, Multiplexer_Module_4_out_6, dibbleDouble_10_out_0, dibbleDouble_10_out_1, dibbleDouble_10_out_2, dibbleDouble_10_out_3, dibbleDouble_10_out_4, dibbleDouble_10_out_5, dibbleDouble_10_out_6, dibbleDouble_10_out_7, dibbleDouble_10_out_8, dibbleDouble_10_out_9, dibbleDouble_10_out_10, dibbleDouble_10_out_11, \segment7-input4_11_out_0 , \segment7-input4_11_out_1 , \segment7-input4_11_out_2 , \segment7-input4_11_out_3 , \segment7-input4_11_out_4 , \segment7-input4_11_out_5 , \segment7-input4_11_out_6 , \segment7-input4_12_out_0 , \segment7-input4_12_out_1 , \segment7-input4_12_out_2 , \segment7-input4_12_out_3 , \segment7-input4_12_out_4 , \segment7-input4_12_out_5 , \segment7-input4_12_out_6 , \segment7-input4_13_out_0 , \segment7-input4_13_out_1 , \segment7-input4_13_out_2 , \segment7-input4_13_out_3 , \segment7-input4_13_out_4 , \segment7-input4_13_out_5 , \segment7-input4_13_out_6 , BinarytoHex_8_out_0, BinarytoHex_8_out_1, BinarytoHex_8_out_2, BinarytoHex_8_out_3, BinarytoHex_8_out_4, BinarytoHex_8_out_5, BinarytoHex_8_out_6, BinarytoHex_8_out_7, \7segment-HexConverter_7_out_0 , \7segment-HexConverter_7_out_1 , \7segment-HexConverter_7_out_2 , \7segment-HexConverter_7_out_3 , \7segment-HexConverter_7_out_4 , \7segment-HexConverter_7_out_5 , \7segment-HexConverter_7_out_6 , \7segment-HexConverter_9_out_0 , \7segment-HexConverter_9_out_1 , \7segment-HexConverter_9_out_2 , \7segment-HexConverter_9_out_3 , \7segment-HexConverter_9_out_4 , \7segment-HexConverter_9_out_5 , \7segment-HexConverter_9_out_6 , BinarytoOctal_0_out_0, BinarytoOctal_0_out_1, BinarytoOctal_0_out_2, BinarytoOctal_0_out_3, BinarytoOctal_0_out_4, BinarytoOctal_0_out_5, BinarytoOctal_0_out_6, BinarytoOctal_0_out_7, BinarytoOctal_0_out_8, \7segment-3input_3_out_0 , \7segment-3input_3_out_1 , \7segment-3input_3_out_2 , \7segment-3input_3_out_3 , \7segment-3input_3_out_4 , \7segment-3input_3_out_5 , \7segment-3input_3_out_6 , \7segment-3input_2_out_0 , \7segment-3input_2_out_1 , \7segment-3input_2_out_2 , \7segment-3input_2_out_3 , \7segment-3input_2_out_4 , \7segment-3input_2_out_5 , \7segment-3input_2_out_6 , \7segment-3input_1_out_0 , \7segment-3input_1_out_1 , \7segment-3input_1_out_2 , \7segment-3input_1_out_3 , \7segment-3input_1_out_4 , \7segment-3input_1_out_5 , \7segment-3input_1_out_6 ;
  
      always @ (*)
        $display("SevenSegDisplay:SevenSegDisplay_2.abcdefg. = %b%b%b%b%b%b%b%b}",
                 Multiplexer_Module_4_out_0, Multiplexer_Module_4_out_1, Multiplexer_Module_4_out_2, Multiplexer_Module_4_out_3, Multiplexer_Module_4_out_4, Multiplexer_Module_4_out_5, Multiplexer_Module_4_out_6, Point);
  
      always @ (*)
        $display("SevenSegDisplay:SevenSegDisplay_0.abcdefg. = %b%b%b%b%b%b%b%b}",
                 Multiplexer_Module_6_out_0, Multiplexer_Module_6_out_1, Multiplexer_Module_6_out_2, Multiplexer_Module_6_out_3, Multiplexer_Module_6_out_4, Multiplexer_Module_6_out_5, Multiplexer_Module_6_out_6, Point);
  
      always @ (*)
        $display("SevenSegDisplay:SevenSegDisplay_1.abcdefg. = %b%b%b%b%b%b%b%b}",
                 Multiplexer_Module_5_out_0, Multiplexer_Module_5_out_1, Multiplexer_Module_5_out_2, Multiplexer_Module_5_out_3, Multiplexer_Module_5_out_4, Multiplexer_Module_5_out_5, Multiplexer_Module_5_out_6, Point);
  mux Multiplexer_Module_6(Multiplexer_Module_6_out_0, Multiplexer_Module_6_out_1, Multiplexer_Module_6_out_2, Multiplexer_Module_6_out_3, Multiplexer_Module_6_out_4, Multiplexer_Module_6_out_5, Multiplexer_Module_6_out_6, \7segment-3input_3_out_6 , \7segment-3input_3_out_5 , \7segment-3input_3_out_4 , \7segment-3input_3_out_3 , \7segment-3input_3_out_2 , \7segment-3input_3_out_1 , \7segment-3input_3_out_0 , , , , , , , , \segment7-input4_13_out_6 , \segment7-input4_13_out_5 , \segment7-input4_13_out_4 , \segment7-input4_13_out_3 , \segment7-input4_13_out_2 , \segment7-input4_13_out_1 , \segment7-input4_13_out_0 , Selector);
  mux Multiplexer_Module_5(Multiplexer_Module_5_out_0, Multiplexer_Module_5_out_1, Multiplexer_Module_5_out_2, Multiplexer_Module_5_out_3, Multiplexer_Module_5_out_4, Multiplexer_Module_5_out_5, Multiplexer_Module_5_out_6, \7segment-3input_2_out_6 , \7segment-3input_2_out_5 , \7segment-3input_2_out_4 , \7segment-3input_2_out_3 , \7segment-3input_2_out_2 , \7segment-3input_2_out_1 , \7segment-3input_2_out_0 , \7segment-HexConverter_9_out_1 , \7segment-HexConverter_9_out_0 , \7segment-HexConverter_9_out_6 , \7segment-HexConverter_9_out_5 , \7segment-HexConverter_9_out_4 , \7segment-HexConverter_9_out_3 , \7segment-HexConverter_9_out_2 , \segment7-input4_12_out_6 , \segment7-input4_12_out_5 , \segment7-input4_12_out_4 , \segment7-input4_12_out_3 , \segment7-input4_12_out_2 , \segment7-input4_12_out_1 , \segment7-input4_12_out_0 , Selector);
  mux Multiplexer_Module_4(Multiplexer_Module_4_out_0, Multiplexer_Module_4_out_1, Multiplexer_Module_4_out_2, Multiplexer_Module_4_out_3, Multiplexer_Module_4_out_4, Multiplexer_Module_4_out_5, Multiplexer_Module_4_out_6, \7segment-3input_1_out_6 , \7segment-3input_1_out_5 , \7segment-3input_1_out_4 , \7segment-3input_1_out_3 , \7segment-3input_1_out_2 , \7segment-3input_1_out_1 , \7segment-3input_1_out_0 , \7segment-HexConverter_7_out_1 , \7segment-HexConverter_7_out_0 , \7segment-HexConverter_7_out_6 , \7segment-HexConverter_7_out_5 , \7segment-HexConverter_7_out_4 , \7segment-HexConverter_7_out_3 , \7segment-HexConverter_7_out_2 , \segment7-input4_11_out_6 , \segment7-input4_11_out_5 , \segment7-input4_11_out_4 , \segment7-input4_11_out_3 , \segment7-input4_11_out_2 , \segment7-input4_11_out_1 , \segment7-input4_11_out_0 , Selector);
  dibbleDouble dibbleDouble_10(dibbleDouble_10_out_0, dibbleDouble_10_out_1, dibbleDouble_10_out_2, dibbleDouble_10_out_3, dibbleDouble_10_out_4, dibbleDouble_10_out_5, dibbleDouble_10_out_6, dibbleDouble_10_out_7, dibbleDouble_10_out_8, dibbleDouble_10_out_9, dibbleDouble_10_out_10, dibbleDouble_10_out_11, H, G, F, E, D, C, B, A);
  segment7input4 \segment7-input4_11 (\segment7-input4_11_out_0 , \segment7-input4_11_out_1 , \segment7-input4_11_out_2 , \segment7-input4_11_out_3 , \segment7-input4_11_out_4 , \segment7-input4_11_out_5 , \segment7-input4_11_out_6 , dibbleDouble_10_out_8, dibbleDouble_10_out_9, dibbleDouble_10_out_10, dibbleDouble_10_out_11);
  segment7input4 \segment7-input4_12 (\segment7-input4_12_out_0 , \segment7-input4_12_out_1 , \segment7-input4_12_out_2 , \segment7-input4_12_out_3 , \segment7-input4_12_out_4 , \segment7-input4_12_out_5 , \segment7-input4_12_out_6 , dibbleDouble_10_out_4, dibbleDouble_10_out_5, dibbleDouble_10_out_6, dibbleDouble_10_out_7);
  segment7input4 \segment7-input4_13 (\segment7-input4_13_out_0 , \segment7-input4_13_out_1 , \segment7-input4_13_out_2 , \segment7-input4_13_out_3 , \segment7-input4_13_out_4 , \segment7-input4_13_out_5 , \segment7-input4_13_out_6 , dibbleDouble_10_out_0, dibbleDouble_10_out_1, dibbleDouble_10_out_2, dibbleDouble_10_out_3);
  bin2hex BinarytoHex_8(BinarytoHex_8_out_0, BinarytoHex_8_out_1, BinarytoHex_8_out_2, BinarytoHex_8_out_3, BinarytoHex_8_out_4, BinarytoHex_8_out_5, BinarytoHex_8_out_6, BinarytoHex_8_out_7, C, B, A, H, G, F, E, D);
  segment7hex \7segment-HexConverter_7 (\7segment-HexConverter_7_out_0 , \7segment-HexConverter_7_out_1 , \7segment-HexConverter_7_out_2 , \7segment-HexConverter_7_out_3 , \7segment-HexConverter_7_out_4 , \7segment-HexConverter_7_out_5 , \7segment-HexConverter_7_out_6 , BinarytoHex_8_out_7, BinarytoHex_8_out_0, BinarytoHex_8_out_1, BinarytoHex_8_out_2);
  segment7hex \7segment-HexConverter_9 (\7segment-HexConverter_9_out_0 , \7segment-HexConverter_9_out_1 , \7segment-HexConverter_9_out_2 , \7segment-HexConverter_9_out_3 , \7segment-HexConverter_9_out_4 , \7segment-HexConverter_9_out_5 , \7segment-HexConverter_9_out_6 , BinarytoHex_8_out_3, BinarytoHex_8_out_4, BinarytoHex_8_out_5, BinarytoHex_8_out_6);
  bin2oct BinarytoOctal_0(BinarytoOctal_0_out_0, BinarytoOctal_0_out_1, BinarytoOctal_0_out_2, BinarytoOctal_0_out_3, BinarytoOctal_0_out_4, BinarytoOctal_0_out_5, BinarytoOctal_0_out_6, BinarytoOctal_0_out_7, BinarytoOctal_0_out_8, C, B, A, F, E, D, G, H);
  segment7input3 \7segment-3input_3 (\7segment-3input_3_out_0 , \7segment-3input_3_out_1 , \7segment-3input_3_out_2 , \7segment-3input_3_out_3 , \7segment-3input_3_out_4 , \7segment-3input_3_out_5 , \7segment-3input_3_out_6 , BinarytoOctal_0_out_8, BinarytoOctal_0_out_7, BinarytoOctal_0_out_6);
  segment7input3 \7segment-3input_2 (\7segment-3input_2_out_0 , \7segment-3input_2_out_1 , \7segment-3input_2_out_2 , \7segment-3input_2_out_3 , \7segment-3input_2_out_4 , \7segment-3input_2_out_5 , \7segment-3input_2_out_6 , BinarytoOctal_0_out_3, BinarytoOctal_0_out_4, BinarytoOctal_0_out_5);
  segment7input3 \7segment-3input_1 (\7segment-3input_1_out_0 , \7segment-3input_1_out_1 , \7segment-3input_1_out_2 , \7segment-3input_1_out_3 , \7segment-3input_1_out_4 , \7segment-3input_1_out_5 , \7segment-3input_1_out_6 , BinarytoOctal_0_out_0, BinarytoOctal_0_out_1, BinarytoOctal_0_out_2);
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


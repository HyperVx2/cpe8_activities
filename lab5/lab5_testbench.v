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

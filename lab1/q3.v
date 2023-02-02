module q3 (input a, b, c, d,
    output a_not, f);

    wire w0, w1, w2;

    not (a_not, a);

    or (w0, a, b), (w1, c, d), (w2, a_not, b, d);

    and (f, w0, w1, w2);
endmodule
module lab2_gate (input A, B, C, D,
                    output a, b, c, d, e, f, g);

    not (B_not, B), (C_not, C), (D_not, D);

    and (g1, B_not, D_not); // g1 = ~B~D
    and (g2, B, D); // g2 = BD
    
    and (g3, C, D); // g3 = CD
    and (g4, C_not, D_not); // g4 = ~C~D

    and (g5, B_not, C); // g5 = ~BC
    and (g6, C, D_not); // g6 = C~D
    and (g7, B, C_not, D_not); // g7 = B~CD

    and (g8, B, D_not); // g8 = B~D
    and (g9, B, C_not); // g9 = B~C

    or (a, A, C, g1, g2);
    or (b, A, B_not, g3, g4);
    or (c, B, C_not, D);
    or (d, A, g5, g1, g6, g7);
    or (e, g1, g6);
    or (f, A, g9, g8, g4);
    or (g, A, g5, g9, g6);

endmodule
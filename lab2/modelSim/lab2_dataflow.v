module lab2_dataflow (input A, B, C, D, 
                        output a, b, c, d, e, f, g);

    assign a = (A | C | (~B & ~D) | (B & D));
    assign b = (A | ~B | (C & D) | (~C & ~D));
    assign c = (B | ~C | D);
    assign d = (A | (~B & C) | (~B & ~D) | (C & ~D) | ((B & ~C) & D));
    assign e = ((~B & ~D) | (C & ~D));
    assign f = (A | (B & ~C) | (B & ~D) + (~C & ~D));
    assign g = (A | (~B & C) | (B & ~C) | (C & ~D));

endmodule
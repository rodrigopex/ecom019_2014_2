// MUX2

module mux(OUT, A, B, SEL);
    output OUT;
    input A,B,SEL;
    not I5 (sel_n, SEL) ;
    and I6 (sel_a, B, SEL);
    and I7 (sel_b, sel_n, A);
    or I4 (OUT, sel_a, sel_b);
endmodule

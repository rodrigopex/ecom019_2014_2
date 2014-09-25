module mux4(OUT, A, B, C, D, SEL);
    output OUT;
    input A,B,C,D;
    input [1:0] SEL;
//    mux(out, a, b, sel)

    mux M1 (.A(A), .OUT(out_mux_1), .B(B), .SEL(SEL[0]));

    mux M2 (.OUT(out_mux_2),
            .A(C),
            .B(D),
            .SEL(SEL[0])
    );
    mux M3 (OUT, out_mux_1, out_mux_2, SEL[1]);
endmodule

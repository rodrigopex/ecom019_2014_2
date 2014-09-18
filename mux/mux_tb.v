module test;

  /* Make a reset that pulses once. */
  reg a = 0, b = 0, sel = 0 ;
    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0,test);
        # 1 a = 0; b = 0; sel = 1;
        # 1 a = 0; b = 1; sel = 0;
        # 1 a = 0; b = 1; sel = 1;
        # 1 a = 1; b = 0; sel = 0;
        # 1 a = 1; b = 0; sel = 1;
        # 1 a = 1; b = 1; sel = 0;
        # 1 a = 1; b = 1; sel = 1;
        # 1 $finish;
    end

  wire out, out2;
  mux m1 (out, a, b, sel);
  mux m2 (out2, out, out, sel);

  initial
     $monitor("At time %t, out = %h (%0d)",
              $time, out, out);
endmodule // test

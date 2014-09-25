module test;

  /* Make a reset that pulses once. */
  reg a = 0, b = 0, c = 0, d = 0;
  reg [1:0] sel = 2'b00 ;

    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0,test);
        # 1 a = 1; b = 0; c = 0; d = 0; sel = 2'b00;
        # 1 a = 0; b = 0; c = 0; d = 1; sel = 2'b11;
        # 1 a = 0; b = 0; c = 0; d = 0; sel = 2'b00;
        # 1 a = 1; b = 1; c = 0; d = 0; sel = 2'b01;
        # 1 a = 1; b = 1; c = 0; d = 0; sel = 2'b00;
        # 1 a = 0; b = 0; c = 1; d = 1; sel = 2'b10;
        # 1 a = 0; b = 0; c = 1; d = 1; sel = 2'b11;
        # 1 a = 1; b = 0; c = 0; d = 0; sel = 2'b00;
        # 1 a = 0; b = 1; c = 1; d = 1; sel = 2'b10;
        # 1 a = 0; b = 0; c = 1; d = 0; sel = 2'b00;
        # 1 a = 0; b = 0; c = 0; d = 1; sel = 2'b00;
        # 1 $finish;
    end

  wire out;
//   mux m1 (out, a, b, sel);
  mux4 m (out, a, b, c, d, sel);

  initial
     $monitor("At time %t, out = %h (%0d)",
              $time, out, out);
endmodule // test

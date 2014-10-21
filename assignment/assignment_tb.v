module test;
    integer i, j;
    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0,test);
        i = 3;
        j = 4;
        i <= #1 j;
        j <= #1 i;
        j = 5;
        # 50 $finish;
    end
    reg clk, d;
    wire q;
    initial begin
        clk = 0;
        d = 0;
        #2 d = 0;
        #5 d = 1;
        #3 d = 0;
        #1 d = 1;
        #6 d = 1;
        #2 d = 0;
        #3 d = 1;
        #5 d = 0;
    end
    always
        #1 clk = !clk;

    dff TESTANDO (.clk(clk), .q(q), .d(d));
endmodule // test

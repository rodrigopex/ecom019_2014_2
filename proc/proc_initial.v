
module test;
    reg clk = 0;
    initial #100 $finish;

    initial begin
        $display("1");
        #2 $display("1.1");
    end
    initial fork
        $display("2");
        $display("2.1");
    join
    always #5 clk = !clk;
    always @(clk) begin
        $display("4");
        $display("5");
    end
    initial $monitor(clk);
    always @(clk) $diplay(clk);
endmodule // test

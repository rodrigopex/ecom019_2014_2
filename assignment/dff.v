`define REG_DELAY 1
module dff(q, clk, d);
    input clk, d;
    output q;
    reg q;
    always @(posedge clk)
        q <= #(`REG_DELAY) d;
endmodule

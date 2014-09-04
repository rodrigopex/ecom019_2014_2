// module halfAdder(a, b, cout, s);
//     output [31 : 0] s;
//     output 	     cout;
//     input [31:0] a, b;
//     always @(a, b)
//         s <= a xor b;
//         cout <= a and b;
// endmodule

module counter(out, clk, reset);

    parameter WIDTH = 8;
    output [WIDTH-1 : 0] out;
    input 	       clk, reset;

    reg [WIDTH-1 : 0]   out;
//     wire 	       clk, reset;

    always @(posedge clk)
        out <= #1 out + 1;

    always @reset
        if (reset)
            out <= #1 8'b0;



    endmodule // counter

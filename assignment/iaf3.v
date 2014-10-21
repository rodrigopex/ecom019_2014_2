module iaf3;
    integer i, j;
    initial begin
        i = 3;
        j = 4;
        fork
            #1 i = #1 j;
            #1 j = #1 i;
        join
    end
endmodule

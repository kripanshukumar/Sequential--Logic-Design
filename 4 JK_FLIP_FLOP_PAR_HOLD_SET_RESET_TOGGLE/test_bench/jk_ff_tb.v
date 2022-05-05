module jk_ff_tb ();

reg j,k,clk,reset;
wire q;

jk_flip_flop DUT(q,j,k,clk,reset);


integer itr = 0;

initial begin
    {j,k,clk,reset} = 4'b0000;
end

initial begin
    for(itr = 0; itr < 16; itr = itr + 1)
    #10{reset,j,k,clk} = itr;

    #20 $finish;
end

initial begin
    $monitor("RESET: %d, J:%d, K:%d, CLK:%d, Q:%d",reset,j,k,clk,q);
end

endmodule
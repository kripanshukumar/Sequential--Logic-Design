module t_flip_flop (q,q_bar,t,clk,reset);

output q,q_bar;
input t,clk,reset;

wire t0,t1;

assign q = t0;

d_flip_flop d1(t0,q_bar,t1,clk,reset);
xor x1(t1,t0,t);

endmodule



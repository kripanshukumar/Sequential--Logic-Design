module sr_latch(output q, q_bar, input s, r);
 
nor n0(q,s,q_bar);
nor n1(q_bar,r,q);

endmodule
module sr_tb();

reg s,r;
wire q,q_bar;

integer itr = 0;

sr_latch DUT(q,q_bar,s,r);

initial begin
    {s,r} = 2'b00;
end

initial begin
    for(itr = 0; itr < 8; itr = itr + 1)
    #10 {s,r} = itr;
end

initial begin
    $monitor("S: =%d, R: %d, Q: %d, Q_BAR: %d", s,r,q,q_bar);
end

endmodule
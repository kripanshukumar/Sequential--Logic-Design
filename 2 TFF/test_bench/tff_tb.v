module tff_tb();

reg t,clk,reset;
wire q,q_bar;

t_flip_flop dut(q,q_bar,t,clk,reset);

integer itr;

initial
begin
	{t,clk,reset} = 3'b000;
end

always
begin
#7 clk = !clk;
end

initial
	begin
		for(itr = 0; itr<8;itr=itr+1)
		begin
			{t} = itr;
			#13;
		end
		#20 $finish;
	end

initial
begin
	$monitor("CLK = %d, T = %d, RESET = %d, Q = %d, Q_BAR = %d",clk,t,reset,q,q_bar);
end

endmodule
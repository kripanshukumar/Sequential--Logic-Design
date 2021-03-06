module dff_tb();

reg d,clk,reset;
wire q,q_bar;

d_flip_flop dut(q,q_bar,d,clk,reset);

integer itr;

initial
begin
	{d,clk,reset} = 3'b000;
end

always
begin
#10 clk = !clk;
end

initial
	begin
		for(itr = 0; itr<4;itr=itr+1)
		begin
			{reset,d} = itr;
			#20;
		end
		#20 $finish;
	end

initial
begin
	$monitor("CLK = %d, D = %d, RESET = %d, Q = %d, Q_BAR = %d",clk,d,reset,q,q_bar);
end

endmodule
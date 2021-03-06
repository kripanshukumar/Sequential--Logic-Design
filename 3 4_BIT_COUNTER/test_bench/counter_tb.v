module counter_tb();

reg [3:0] in = 4'b0000;
reg clk = 1'b0;
reg set = 1'b0;
reg reset = 1'b0;
wire [3:0] out;

counter_4_bit DUT(out,in,set,reset,clk);

integer itr = 0;
integer itr1 = 0;

initial begin
for(itr = 0; itr<16; itr = itr+1)
begin
	in = itr;
	set = !set;
	#5 set = !set;
	for(itr1 = 2*itr; itr1 < 32; itr1 = itr1+1)
	begin
	#5 clk = ! clk;
	end
	#5 reset = !reset;
	#5 reset = !reset;
end
end

initial begin
$monitor("IN: %d, SET: %d, RESET: %d, CLK: %d, OUT: %d", in, set,reset, clk, out);
end

endmodule


module counter_4_bit(out,in,set,reset,clk);

output reg [3:0] out;
input [3:0] in;
input set,reset,clk;

always @(posedge set,posedge clk,posedge reset)
begin
	if(set == 1'b1)
		out <= in;
	else if (clk == 1'b1)
		out <= out+1;
	else if(reset == 1'b1)
		out <= 4'b0000;
	else
		out = out;
end

endmodule

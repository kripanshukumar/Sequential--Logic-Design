module d_flip_flop(q,q_bar, d,clk,reset);

output reg q = 1'b0;
output q_bar;
input clk,reset,d;

assign q_bar = !q;

always @(posedge clk,posedge reset)
begin
	if(reset == 1'b1)
		q <= 1'b0;
	else if(clk == 1'b1)
		q <= d;
	else
		q <= q;
end
endmodule

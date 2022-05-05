module mod12_counter(out,clk,reset);

output reg [3:0] out = 4'b0000;
input clk,reset;

always @(posedge clk)begin
    if(reset)
        out <= 4'b0000;
    else if(out == 4'b1100)
        out <= 4'b0000;
    else
        out = out + 1;
end

endmodule
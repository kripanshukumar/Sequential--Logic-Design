module binary_up_down_counter(out, in,sel,mode,reset,clk);

output reg [3:0] out = 4'b0000;
input [3:0] in;
input sel;
input mode;
input reset;
input clk;

always @(posedge clk) begin
    if(reset == 1'b1)
        out <= 4'b0000;
    else if(mode == 1'b1) 
        out <= out - 1;
    else if(mode == 1'b0)
        out <= out + 1;
    else
        out <= out;

    if(sel == 1'b1)
        out <=in;
end

endmodule
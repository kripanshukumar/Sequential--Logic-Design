module siso_4_bit(s_out,s_in,rst,clk);
output reg s_out;
reg [2:0] ff;
input s_in;
input rst;
input clk;

always @(posedge clk) begin
    if(rst == 1'b1)
        ff <= 4'b0000;
    else begin
        ff[0] <= s_in;
        ff[1] <= ff[0];
        ff[2] <= ff[1];
        s_out <= ff[2];
    end
end

endmodule
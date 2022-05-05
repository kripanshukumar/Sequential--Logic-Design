`include "def.v"

module jk_flip_flop(output reg q, input j, k, clk, reset);

always @(posedge clk)begin
    if(reset)
        q <= 1'b0; 
    else
    begin
        case({j,k})
        `HOLD   : q <= q;
        `RESET  : q <= 1'b0;
        `SET    : q <= 1'b1;
        `TOGGLE : q <= !q;
        endcase
    end
end
endmodule
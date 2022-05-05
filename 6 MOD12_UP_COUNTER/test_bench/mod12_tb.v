module mod12_tb();

reg clk = 1'b0;
reg reset = 1'b0;
wire [3:0] out;

mod12_counter DUT(out,clk,reset);

integer itr = 0;

always
    #5 clk = !clk;

initial begin
    #150 reset = 1'b1;
    #10 reset = 1'b0;
    #60 $finish;
end

initial begin
    $monitor("RESET: %d, CLK: %d, OUT: %d",reset,clk,out);
end


endmodule
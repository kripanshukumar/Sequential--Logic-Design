module bin_up_down_tb ();

reg [3:0] in;
reg sel;
reg mode;
reg clk;
reg reset;
wire [3:0]out;

binary_up_down_counter DUT(out,in,sel,mode,reset,clk);

integer itr = 0;
integer itr1 = 0;

initial begin
    {in,sel,mode,clk,reset} = 8'b00000000;
end

always
    #5 clk = ~clk;

initial begin
    for(itr = 0; itr < 16; itr = itr + 1)
    begin
        in = itr;
        #10 sel = ~sel;
        #10 sel = ~sel;
        #160;
        mode = 1'b1;
        in = itr;
        #10 sel = ~sel;
        #10 sel = ~sel;
        #160;
        mode = 1'b0;
    end
    $finish;
end

initial begin
    $monitor("RESET: %d, MODE: %d, SEL: %d, IN: %d, OUT: %d, CLK: %d", reset, mode, sel,in,out,clk);
end

endmodule

            

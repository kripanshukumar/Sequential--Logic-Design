module siso_tb ();

reg in, rst, clk;
wire out;

siso_4_bit DUT(out,in,rst,clk);

integer itr = 0;

initial begin
    {in,rst,clk} = 3'b000;
end

initial begin
    for(itr = 0; itr < 64; itr = itr +1)
    begin
        {in,clk} <= itr;
        rst <= itr[5];
        #5;
    end
    #20 $finish;
end

initial begin
    $monitor("RST: %d, S_IN: %d, CLK: %d, S_OUT: %d",rst,in,clk,out);
end

endmodule
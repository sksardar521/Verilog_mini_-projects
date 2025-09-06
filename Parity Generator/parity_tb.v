module parity_tb;
reg x,clk;
wire z;
parity dut(.x(x), .clk(clk), .z(z));
initial begin
    $dumpfile("parity.vcd");
    $dumpvars(0,parity_tb);
    clk = 1'b0;
end
always #5 clk = ~clk;
initial 
    begin
        #2 x=0; #10 x=1; #10 x=1;
        #10 x=0; #10 x=1;
        #10 x=0; #10 x=0;#10 x=1; #10 x=0;
        #30 $finish;
    end
endmodule

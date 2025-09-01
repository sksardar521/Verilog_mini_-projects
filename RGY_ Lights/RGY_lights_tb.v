`timescale 1ns / 1
module light_tb;
reg clk; wire [2:0]light;
lights_RGY dut(clk,light);
initial begin
clk = 1'b0; 
#3 clk = 1'b1;
#200 $finish;
end
always #5 clk = ~clk;//generating clock with T=10timeunits
    
endmodule

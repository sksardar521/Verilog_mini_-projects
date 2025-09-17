module pipetest;
parameter n=10;
reg[n-1:0]a,b,c,d;
reg clk;
wire[n-1:0]f;
pipeline dut(.c(c), .a(a), .b(b), .d(d), .f(f), .clk(clk));
initial begin
    clk = 1'b0;
    a=0; b=0; c=0; d=0; 
end
always #10 clk = ~clk;
initial begin
    #5 a=10; b=12; c=6; d=3; 
    #20 a=10; b=10; c=5; d=3; 
    #20 a=20; b=11; c=1; d=4; 
    #20 a=15; b=10; c=8; d=2; 
    #20 a=8; b=15; c=5; d=0; 
    #20 a=10; b=20; c=5; d=3; 
    #20 a=30; b=1; c=2; d=4; 
end

initial begin
    $dumpfile("pipe.vcd");
    $dumpvars(0,pipetest);
    $monitor("time: %d, f = %h",$time,f);
    #300 $finish;
end
endmodule
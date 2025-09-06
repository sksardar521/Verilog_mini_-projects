`timescale 1ns / 1ps
module seq_tb;
reg x,clk,reset;
wire z;
seq_dtc dut(.x(x), .z(z), .clk(clk), .reset(reset));
initial
    begin
        $dumpfile("seq_dtc.vcd");
        $dumpvars(0,seq_tb);
        clk=1'b0; reset = 1'b1;
        #13 reset = 1'b0;
    end
    always #5 clk=~clk;
    initial
        begin
            #12 x=1;#10 x=1;#10 x=0;#10 x=1;#10 x=1;
            #10 x=0;#10 x=1;#10 x=0;#10 x=1;#10 x=1;
            #10 x=0;#10 x=1;#10 x=1;#10 x=0;#10 x=1;
            #20 $finish;
        end
endmodule
//1 1 0 1 1 0 1 0 1 1 0 1 1 0


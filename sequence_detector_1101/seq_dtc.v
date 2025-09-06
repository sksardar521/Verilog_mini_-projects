`timescale 1ns / 1ps
module seq_dtc(x,z,clk,reset);
input x,clk,reset;
output reg z;
parameter s0=0,s1=1,s2=2,s3=3;
reg[1:0]ps,ns;
always@(posedge clk or posedge reset)
    if(reset) ps<=s0;
    else ps<=ns;
always@(ps,x)    
    begin
        
        case(ps)
        s0: begin
                z=x?0:0;
                ns=x?s1:s0;
            end
        s1: begin
                z=x?0:0;
                ns=x?s2:s0;
            end
        s2: begin
                z=x?0:0;
                ns=x?s2:s3;
            end
        s3: begin
                z=x?1:0;
                ns=x?s1:s0;
            end            
            
        endcase
    end
endmodule

module pipeline (a,b,c,d,clk,f);
    parameter n=10;
    input[n-1:0]a,b,c,d;
    output[n-1:0]f;
    input clk;
    reg[n-1:0]l12_x1,l12_x2,l12_d,l23_x3,l23_d,l34_f;
    assign f = l34_f;
    always @(posedge clk) begin
        #4 l12_x1 <= a+b;
        #4 l12_x2 <= c-d;
        l12_d <= d;
    end
    always @(posedge clk) begin
        #4 l23_x3 <= l12_x1+l12_x2;
        l23_d <= l12_d;
        
    end
    always @(posedge clk) begin
        #6 l34_f <= l23_x3 * l23_d;
        
    end
    

endmodule

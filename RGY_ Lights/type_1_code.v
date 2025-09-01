module lights_RGY(
        input clk,
        output reg[2:0]light
    );
    parameter s0=0,s1=1,s2=2;
    parameter red=3'b100,green=3'b010,  yellow=3'b001;
    reg[1:0]state;
    /*initial begin
    light = 3'b100;
    end*/
    always@(posedge clk)
    begin
    case(state)
            s0: begin 
                light<=green;state<=s1;
                end
            s1: begin 
                light<=yellow;state<=s2;
                end
            s2: begin 
                light<=red;state<=s0;
                end
            default: begin 
                light<=red;state<=s0;
                end
      endcase
      end
endmodule

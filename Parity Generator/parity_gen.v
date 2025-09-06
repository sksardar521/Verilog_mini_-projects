module parity(x,z,clk);
    input x,clk;
    output reg z;
    parameter even=0,odd=1;
    reg even_odd;
    always@(posedge clk)
        begin
            case (even_odd)
                even:begin
                        z<=x?1:0;
                        even_odd <= x?odd:even;
                    end
                odd:begin
                        z<=x?0:1;
                        even_odd <= x?even:odd;
                    end
                default: even_odd<=even;
            endcase
        end

endmodule
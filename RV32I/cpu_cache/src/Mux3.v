module Mux3(input wire [31:0] A2,
            input wire [31:0] B1,
            input wire [31:0] C0,
            input wire [1:0] sel,
            output wire[31:0] Z4);
    assign Z4 = (sel == 2'd2)? A2 : (sel == 2'd1)? B1 : (sel == 2'd0)? C0 : 32'b0;
endmodule

module Mux (input wire [31:0] A1,
            input wire [31:0] B0,
            input wire sel,
            output wire [31:0] Z);
    assign Z = (sel)? A1 : B0;
endmodule
    

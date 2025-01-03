module Reg_M
    import DEF::*;
(
    input logic clk,
    input logic rst,
    input dw alu_out_E,
    input dw rs2_data_E,
    output dw alu_out_M,
    output dw rs2_data_M
);
    always_ff @(posedge clk or posedge rst) begin
        if(!rst) begin
            alu_out_M <= 64'd0;
            rs2_data_M <= 64'd0;
        end
        else begin
            alu_out_M <= alu_out_E;
            rs2_data_M <= rs2_data_E;  
        end
    end
endmodule
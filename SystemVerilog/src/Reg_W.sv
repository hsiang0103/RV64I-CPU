module Reg_W
    import DEF::*;
(
    input logic clk,
    input logic rst,
    input dw alu_out_M,
    input dw ld_data_M,
    input dw current_pc_M,
    output dw current_pc_W,
    output dw alu_out_W,
    output dw ld_data_W
);
    always_ff @(posedge clk or negedge rst) begin
        if(!rst) begin
            alu_out_W <= 64'd0;
            ld_data_W <= 64'd0;
            current_pc_W <= 64'd0;
        end
        else begin
            alu_out_W <= alu_out_M;
            ld_data_W <= ld_data_M;
            current_pc_W <= current_pc_M;
        end
    end
endmodule
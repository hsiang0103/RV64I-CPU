module Reg_E
    import DEF::*;
(
    input logic clk,
    input logic rst,
    input dw current_pc_D,
    input dw rs1_data_D,
    input dw rs2_data_D,
    input dw sext_imm_D,
    input logic stall,
    input logic jb,
    output dw current_pc_E,
    output dw rs1_data_E,
    output dw rs2_data_E,
    output dw sext_imm_E
);
    always_ff @(posedge clk or negedge rst) begin
        if(!rst) begin
            current_pc_E <= 64'd0;
            rs1_data_E <= 64'd0;
            rs2_data_E <= 64'd0;
            sext_imm_E <= 64'd0;
        end
        else if(stall || jb) begin
            current_pc_E <= current_pc_E;
            rs1_data_E <= 64'd0;
            rs2_data_E <= 64'd0;
            sext_imm_E <= 64'd0;
        end
        else begin
            current_pc_E <= current_pc_D;
            rs1_data_E <= rs1_data_D;
            rs2_data_E <= rs2_data_D;
            sext_imm_E <= sext_imm_D;
        end
    end
endmodule
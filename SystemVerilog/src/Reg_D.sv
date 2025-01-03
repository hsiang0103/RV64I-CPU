module Reg_D
    import DEF::*;
(
    input logic clk,
    input logic rst,
    input dw current_pc,
    input logic [31:0] inst,
    input logic stall,
    input logic jb,
    output dw current_pc_D,
    output logic [31:0] inst_D
);
    always_ff @(posedge clk or posedge rst) begin
        if(!rst) begin
            current_pc_D <= 64'd0;
            inst_D <= {25'd0, 7'b0010011};
        end
        else if(stall) begin
            current_pc_D <= current_pc_D;
            inst_D <= inst_D;
        end
        else if(jb) begin
            current_pc_D <= current_pc_D;
            inst_D <= {25'd0, 7'b0010011};
        end
        else begin
            current_pc_D <= current_pc;
            inst_D <= inst;
        end
    end
endmodule
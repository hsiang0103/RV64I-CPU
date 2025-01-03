module Reg_W(
    input logic clk,
    input logic rst,
    input dw alu_out_M,
    input dw ld_data_M,
    output dw alu_out_W,
    output dw ld_data_W
);
    always_ff @(posedge clk or posedge rst) begin
        if(!rst) begin
            alu_out_W <= 64'd0;
            ld_data_W <= 64'd0;
        end
        else begin
            alu_out_W <= alu_out_M;
            ld_data_W <= ld_data_M;
        end
    end
endmodule
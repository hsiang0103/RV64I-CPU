module PC
    import DEF::*;
(
    input logic clk,
    input logic rst,
    input dw next_pc,
    output dw current_pc
);
    always_ff @(posedge clk or negedge rst) begin
        if (!rst) begin
            current_pc <= 64'd0;
        end else begin
            current_pc <= next_pc;
        end
    end
endmodule : PC

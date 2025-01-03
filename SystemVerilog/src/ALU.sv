module ALU
    import DEF::*;  // import package DEF in module header
(
    input alu_control_packet_t alu_control,
    input dw operand_1,
    input dw operand_2,
    output dw alu_out
);

dw pre_calculate;
logic [5:0] shamt;

assign shamt = (alu_control.alu_width == ALU_OP_64) ? operand_2[5:0] : {1'b0, operand_2[4:0]};

always_comb begin
    unique case (alu_control.alu_op)
        ALU_OP_ADD: begin
            pre_calculate = operand_1 + operand_2;
        end
        ALU_OP_SLL: begin
            pre_calculate = operand_1 << shamt;
        end
        ALU_OP_SLT: begin
            pre_calculate = ($signed(operand_1) < $signed(operand_2))? 64'd1:64'd0;
        end
        ALU_OP_SLTU: begin
            pre_calculate = (operand_1 < operand_2)? 64'd1:64'd0;
        end
        ALU_OP_XOR: begin
            pre_calculate = operand_1 ^ operand_2;
        end
        ALU_OP_SRL: begin
            if(alu_control.alu_width != ALU_OP_64) begin
                pre_calculate = {32'b0, (operand_1[31:0] >> shamt)};
            end
            else begin
                pre_calculate = operand_1 >> shamt;
            end
        end
        ALU_OP_OR: begin
            pre_calculate = operand_1 | operand_2;
        end
        ALU_OP_AND: begin
            pre_calculate = operand_1 & operand_2;
        end
        ALU_OP_SUB: begin
            pre_calculate = operand_1 - operand_2; 
        end
        ALU_OP_SRA: begin
            if(alu_control.alu_width != ALU_OP_64) begin
                pre_calculate = {32'b0, ($signed(operand_1[31:0]) >>> shamt)};
            end
            else begin
                pre_calculate = operand_1 >> shamt;
            end
        end
        default: begin
            pre_calculate = 64'd0;
        end
    endcase
end

assign alu_out = (alu_control.alu_width == ALU_OP_64) ? pre_calculate : {{32{pre_calculate[31]}}, pre_calculate[31:0]};
endmodule : ALU

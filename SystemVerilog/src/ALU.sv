module ALU
    import DEF::*;  // import package DEF in module header
(
    input alu_control_packet_t alu_control,
    input logic [63:0] operand_1,
    input logic [63:0] operand_2,
    output logic [63:0] alu_out
);

function dw twos_complement(dw input);
    return (~input + 64'd1);
endfunction : twos_complement

dw pre_calaulate;
logic [5:0] shamt;

assign shamt = (alu_control.alu_width == ALU_OP_64) ? operand_2[5:0] : {1'b0, operand_2[4:0]};

always_comb begin
    unique case (alu_control.alu_op)
        ALU_OP_ADD: begin
            pre_calculate = operand_1 + operand_2;
        end
        ALU_OP_SLL: begin
            pre_calaulate = operand_1 << shamt;
        end
        ALU_OP_SLT: begin
            pre_calaulate = ($signed(operand_1) < $signed(operand_2))? 64'd1:64'd0;
        end
        ALU_OP_SLTU: begin
            pre_calaulate = (operand_1 < operand_2)? 64'd1:64'd0;
        end
        ALU_OP_XOR: begin
            pre_calaulate = operand_1 ^ operand_2;
        end
        ALU_OP_SRL: begin
            // TODO
        end
        ALU_OP_OR,
        ALU_OP_AND,
        ALU_OP_SUB: begin
            pre_calculate = operand_1 + twos_complement(operand_2); 
        end
        // TODO: add more branches for this case statement to make the ALU complete
    endcase
end

assign alu_out = (alu_control.alu_width == ALU_OP_64) ? pre_calculate : {{32{pre_calculate[31]}}, pre_calculate};
endmodule : ALU

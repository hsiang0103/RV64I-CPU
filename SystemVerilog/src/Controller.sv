module Controller
    import DEF::*;
(
    input logic clk,//
    input logic rst,//
    /* inst information */
    input inst_t inst,//
    /* a0 and a1 for ECALL handle */
    input dw reg_a0,
    input dw reg_a1,
    /* next PC select */
    output next_pc_sel_t next_pc_sel,//
    /* IM write control */
    output logic [7:0] im_w_mask,//
    /* Register File Control */
    output logic reg_w_en,//
    /* ALU control */
    output alu_op1_sel_t alu_op1_sel,//
    output alu_op2_sel_t alu_op2_sel,//
    output logic is_lui,//
    output alu_control_packet_t alu_control,// E_op, E_f3, E_f7
    /* Branch Comparator control */
    BranchCompControlIntf.ControllerSide bc_control,//
    /* DM write control */
    output logic [7:0] dm_w_mask, //
    /* write-back select */
    output wb_sel_t wb_sel, //
    /* halt signal (for testbench to monitor) */
    output logic halt,
    output logic stall,//
    output logic [4:0] W_rd,//
    output logic [2:0] W_f3,//
    output D_data_sel D_rs1_data_sel,//
    output D_data_sel D_rs2_data_sel,//
    output E_data_sel E_rs1_data_sel,//
    output E_data_sel E_rs2_data_sel//
);
    logic [6:0] D_op, E_op, M_op, W_op; 
    logic [2:0] D_f3, E_f3, M_f3;
    logic [4:0] D_rd, E_rd, M_rd, E_rs1, E_rs2, D_rs1, D_rs2;
    logic is_D_use_rs1, is_D_use_rs2, is_W_use_rd;
    logic is_E_use_rs1, is_E_use_rs2, is_M_use_rd;
    logic D_f7, E_f7;

    assign D_op = inst.R_TYPE.opcode;
    assign D_f3 = inst.R_TYPE.func3;
    assign D_rs1 = inst.R_TYPE.rs1;
    assign D_rs2 = inst.R_TYPE.rs2;
    assign D_rd = inst.R_TYPE.rd;
    assign D_f7 = inst.R_TYPE.func7[5];

    always_ff @(posedge clk or negedge rst) begin
        if(!rst) begin
            E_op <= OP_IMM;
            E_f3 <= 3'd0;
            E_rd <= 5'd0;
            E_rs1 <= 5'd0;
            E_rs2 <= 5'd0;
            E_f7 <= 1'd0;
        end
        else begin
            if(stall || next_pc_sel) begin
                E_op <= OP_IMM;
                E_f3 <= 3'd0;
                E_rd <= 5'd0;
                E_rs1 <= 5'd0;
                E_rs2 <= 5'd0;
                E_f7 <= 1'd0;
                E_f7 <= 1'd0;
            end
            else begin
                E_op <= D_op;
                E_f3 <= D_f3;
                E_rd <= D_rd;
                E_rs1 <= D_rs1;
                E_rs2 <= D_rs2;
                E_f7 <= D_f7;
            end
        end
    end

    always_ff @(posedge clk or negedge rst) begin
        if(!rst) begin
            M_op <= OP_IMM;
            M_f3 <= 3'd0;
            M_rd <= 5'd0;
        end
        else begin
            M_op <= E_op;
            M_f3 <= E_f3;
            M_rd <= E_rd;
        end
    end

    always_ff @(posedge clk or negedge rst) begin
        if(!rst) begin
            W_op <= OP_IMM;
            W_f3 <= 3'd0;
            W_rd <= 5'd0;
        end
        else begin
            W_op <= M_op;
            W_f3 <= M_f3;
            W_rd <= M_rd;
        end
    end
// is instruction LUI ?
    assign is_lui = (E_op == LUI)? 1'b1:1'b0;

// alu control signal (operation)
    always_comb begin
        case(E_op)
        OP: begin
            case(E_f3)
            ADD_SUB_FUNC3: begin
                if(!E_f7) begin
                    alu_control.alu_op = ALU_OP_ADD;
                end
                else begin
                    alu_control.alu_op = ALU_OP_SUB;
                end
            end
            SLL_FUNC3: begin
                alu_control.alu_op = ALU_OP_SLL;
            end
            SLT_FUNC3: begin
                alu_control.alu_op = ALU_OP_SLT;
            end
            SLTU_FUNC3: begin
                alu_control.alu_op = ALU_OP_SLTU;
            end
            XOR_FUNC3: begin
                alu_control.alu_op = ALU_OP_XOR;
            end
            SRL_SRA_FUNC3: begin
                if(!E_f7) begin
                    alu_control.alu_op = ALU_OP_SRL;
                end
                else begin
                    alu_control.alu_op = ALU_OP_SRA;
                end
            end
            OR_FUNC3: begin
                alu_control.alu_op = ALU_OP_OR;
            end
            AND_FUNC3: begin
                alu_control.alu_op = ALU_OP_AND;
            end
            default: begin
                alu_control.alu_op = ALU_OP_ADD;
            end
            endcase
        end
        OP_32: begin
            case(E_f3)
            ADD_SUB_FUNC3: begin
                if(!E_f7) begin
                    alu_control.alu_op = ALU_OP_ADD;
                end
                else begin
                    alu_control.alu_op = ALU_OP_SUB;
                end
            end
            SLL_FUNC3: begin
                alu_control.alu_op = ALU_OP_SLL;
            end
            SRL_SRA_FUNC3: begin
                if(!E_f7) begin
                    alu_control.alu_op = ALU_OP_SRL;
                end
                else begin
                    alu_control.alu_op = ALU_OP_SRA;
                end
            end
            default: begin
                alu_control.alu_op = ALU_OP_ADD;
            end
            endcase
        end
        OP_IMM: begin
            case(E_f3)
            ADD_SUB_FUNC3: begin
                alu_control.alu_op = ALU_OP_ADD;
            end
            SLL_FUNC3: begin
                alu_control.alu_op = ALU_OP_SLL;
            end
            SLT_FUNC3: begin
                alu_control.alu_op = ALU_OP_SLT;
            end
            SLTU_FUNC3: begin
                alu_control.alu_op = ALU_OP_SLTU;
            end
            XOR_FUNC3: begin
                alu_control.alu_op = ALU_OP_XOR;
            end
            SRL_SRA_FUNC3: begin
                if(!E_f7) begin
                    alu_control.alu_op = ALU_OP_SRL;
                end
                else begin
                    alu_control.alu_op = ALU_OP_SRA;
                end
            end
            OR_FUNC3: begin
                alu_control.alu_op = ALU_OP_OR;
            end
            AND_FUNC3: begin
                alu_control.alu_op = ALU_OP_AND;
            end
            default: begin
                alu_control.alu_op = ALU_OP_ADD;
            end
            endcase    
        end
        OP_IMM_32: begin
            case(E_f3)
            ADD_SUB_FUNC3: begin
                alu_control.alu_op = ALU_OP_ADD;
            end
            SLL_FUNC3: begin
                alu_control.alu_op = ALU_OP_SLL;
            end
            SRL_SRA_FUNC3: begin
                if(!E_f7) begin
                    alu_control.alu_op = ALU_OP_SRL;
                end
                else begin
                    alu_control.alu_op = ALU_OP_SRA;
                end
            end
            default: begin
                alu_control.alu_op = ALU_OP_ADD;
            end
            endcase
        end
        LOAD: begin
            alu_control.alu_op = ALU_OP_ADD;
        end
        STORE: begin
            alu_control.alu_op = ALU_OP_ADD;
        end
        BRANCH: begin
            alu_control.alu_op = ALU_OP_ADD;
        end
        JAL: begin
            alu_control.alu_op = ALU_OP_ADD;
        end
        JALR: begin
            alu_control.alu_op = ALU_OP_ADD;
        end
        AUIPC: begin
            alu_control.alu_op = ALU_OP_ADD;
        end
        LUI: begin
            alu_control.alu_op = ALU_OP_ADD;
        end
        SYSTEM: begin
            alu_control.alu_op = ALU_OP_ADD;
        end
        default: begin
            alu_control.alu_op = ALU_OP_ADD;
        end
        endcase
    end
// alu control signal (data width)
    assign alu_control.alu_width = (E_op == OP_32 || E_op == OP_IMM_32) ? ALU_OP_32:ALU_OP_64;

// is intruction unsigned branch ?
    assign bc_control.BrUn = (E_op == BRANCH && (E_f3 == BLTU_FUNC3 || E_f3 == BGEU_FUNC3)) ? 1'b1:1'b0;

// instruction memory write back mask (no write)
    assign im_w_mask = 8'b00000000;

// check stage D, W overlap
    always_comb begin
        if(D_op == LUI || D_op == AUIPC || D_op == JAL) begin
            is_D_use_rs1 = 1'd0;
        end
        else begin
            is_D_use_rs1 = 1'd1;
        end
    end

    always_comb begin
        if(D_op == OP || D_op == BRANCH || D_op == STORE || D_op == OP_32) begin
            is_D_use_rs2 = 1'd1;
        end
        else begin
            is_D_use_rs2 = 1'd0;
        end
    end

    always_comb begin
        if(W_op == BRANCH || W_op == STORE) begin
            is_W_use_rd = 1'd0;
        end
        else begin
            is_W_use_rd = 1'd1;
        end
    end
    logic is_D_rs1_W_rd_overlap, is_D_rs2_W_rd_overlap;
    assign is_D_rs1_W_rd_overlap = (is_D_use_rs1 & is_W_use_rd & (D_rs1 == W_rd) & (W_rd !=0));
    assign is_D_rs2_W_rd_overlap = (is_D_use_rs2 & is_W_use_rd & (D_rs2 == W_rd) & (W_rd !=0));
    assign D_rs1_data_sel = (is_D_rs1_W_rd_overlap)? W_FORWARDING_D:D_REG_DATA;
    assign D_rs2_data_sel = (is_D_rs2_W_rd_overlap)? W_FORWARDING_D:D_REG_DATA;

// check stage E, M or W overlap
    always_comb begin
        if(E_op == LUI || E_op == AUIPC || E_op == JAL) begin
            is_E_use_rs1 = 1'd0;
        end
        else begin
            is_E_use_rs1 = 1'd1;
        end
    end
    always_comb begin
        if(E_op == OP || E_op == BRANCH || E_op == STORE || E_op == OP_32) begin
            is_E_use_rs2 = 1'd1;
        end
        else begin
            is_E_use_rs2 = 1'd0;
        end
    end
    always_comb begin
        if(M_op == BRANCH || M_op == STORE) begin
            is_M_use_rd = 1'd0;
        end
        else begin
            is_M_use_rd = 1'd1;
        end
    end
    logic is_E_rs1_W_rd_overlap, is_E_rs1_M_rd_overlap, is_E_rs2_W_rd_overlap, is_E_rs2_M_rd_overlap;
    assign is_E_rs1_W_rd_overlap = (is_E_use_rs1 & is_W_use_rd & (E_rs1 == W_rd) & (W_rd != 0));
    assign is_E_rs1_M_rd_overlap = (is_E_use_rs1 & is_M_use_rd & (E_rs1 == M_rd) & (M_rd != 0));
    assign is_E_rs2_W_rd_overlap = (is_E_use_rs2 & is_W_use_rd & (E_rs2 == W_rd) & (W_rd != 0));
    assign is_E_rs2_M_rd_overlap = (is_E_use_rs2 & is_M_use_rd & (E_rs2 == M_rd) & (M_rd != 0));
    assign E_rs1_data_sel = (is_E_rs1_M_rd_overlap)? M_FORWARDING_E: (is_E_rs1_W_rd_overlap)? W_FORWARDING_E:E_REG_DATA;
    assign E_rs2_data_sel = (is_E_rs2_M_rd_overlap)? M_FORWARDING_E: (is_E_rs2_W_rd_overlap)? W_FORWARDING_E:E_REG_DATA;

// alu operand select
    always_comb begin
        if(E_op == AUIPC || E_op == JAL || E_op == BRANCH) begin
            alu_op1_sel = ALU_OP1_SEL_PC;
        end
        else begin
            alu_op1_sel = ALU_OP1_SEL_RS1;
        end
    end
    always_comb begin
        if(E_op == OP || E_op == OP_32) begin
            alu_op2_sel = ALU_OP2_SEL_RS2;
        end
        else begin
            alu_op2_sel = ALU_OP2_SEL_IMM;
        end
    end

// data memory write back mask
    always_comb begin
        if(M_op == STORE) begin
            case(M_f3)
                SB_FUNC3: begin
                    dm_w_mask = 8'b00000001;
                end
                SH_FUNC3: begin
                    dm_w_mask = 8'b00000011;
                end
                SW_FUNC3: begin
                    dm_w_mask = 8'b00001111;
                end
                SD_FUNC3: begin
                    dm_w_mask = 8'b11111111;
                end
                default: begin
                    dm_w_mask = 8'b00000000;
                end
            endcase
        end 
        else begin
            dm_w_mask = 8'b00000000;
        end
    end
// reg file write back control
    always_comb begin
        if(W_op == BRANCH || W_op == STORE) begin
            reg_w_en = 1'b0;
        end
        else begin
            reg_w_en = 1'b1;
        end
    end
// write back signal select
    always_comb begin
        if(W_op == LOAD) begin
            wb_sel = SEL_LOAD_DATA;
        end
        else if(W_op == JAL || W_op == JALR) begin
            wb_sel = SEL_PC_PLUS_4;
        end
        else begin
            wb_sel = SEL_ALU_OUT;
        end
    end
// next pc select
    always_comb begin
        if(E_op == BRANCH) begin
            case(E_f3)
            BEQ_FUNC3: begin
                if(bc_control.BrEq) begin
                    next_pc_sel = NEXT_PC_SEL_TARGET;
                end
                else begin
                    next_pc_sel = NEXT_PC_SEL_PLUS_4;
                end
            end
            BNE_FUNC3: begin
                if(!bc_control.BrEq) begin
                    next_pc_sel = NEXT_PC_SEL_TARGET;
                end
                else begin
                    next_pc_sel = NEXT_PC_SEL_PLUS_4;
                end
            end
            BLT_FUNC3: begin
                if(bc_control.BrLt) begin
                    next_pc_sel = NEXT_PC_SEL_TARGET;
                end
                else begin
                    next_pc_sel = NEXT_PC_SEL_PLUS_4;
                end
            end
            BGE_FUNC3 : begin
                if(!bc_control.BrLt) begin
                    next_pc_sel = NEXT_PC_SEL_TARGET;
                end
                else begin
                    next_pc_sel = NEXT_PC_SEL_PLUS_4;
                end
            end
            BLTU_FUNC3: begin
                if(bc_control.BrLt) begin
                    next_pc_sel = NEXT_PC_SEL_TARGET;
                end
                else begin
                    next_pc_sel = NEXT_PC_SEL_PLUS_4;
                end
            end
            BGEU_FUNC3: begin
                if(!bc_control.BrLt) begin
                    next_pc_sel = NEXT_PC_SEL_TARGET;
                end
                else begin
                    next_pc_sel = NEXT_PC_SEL_PLUS_4;
                end
            end
            endcase
        end
        else if(E_op == JAL || E_op == JALR) begin
            next_pc_sel = NEXT_PC_SEL_TARGET;
        end
        else begin
            next_pc_sel = NEXT_PC_SEL_PLUS_4;
        end
    end
// stall if RAW (load and use immediately)
    logic is_DE_overlap, is_D_rs1_E_rd_overlap, is_D_rs2_E_rd_overlap;
    assign stall = (E_op == LOAD) & is_DE_overlap;
    assign is_DE_overlap = (is_D_rs1_E_rd_overlap | is_D_rs2_E_rd_overlap);
    assign is_D_rs1_E_rd_overlap = is_D_use_rs1 & (D_rs1 == E_rd) & (E_rd != 0);
    assign is_D_rs2_E_rd_overlap = is_D_use_rs2 & (D_rs2 == E_rd) & (E_rd != 0);

/* ECALL handling */
    always_latch begin
        if (inst.I_TYPE.opcode == SYSTEM && inst.I_TYPE.imm_11_0 == ECALL_FUNC12) begin
            if (reg_a0 == 64'd0) begin : ECALL_to_halt
                halt = 1'b1;
            end : ECALL_to_halt
            else if (reg_a0 == 64'd1) begin : ECALL_to_putchar
                $display("%c", reg_a1[7:0]);
            end : ECALL_to_putchar
            else begin : ECALL_not_support
                $display("Not supported ECALL service request type!\n");
                $finish;
            end : ECALL_not_support
        end
    end
endmodule

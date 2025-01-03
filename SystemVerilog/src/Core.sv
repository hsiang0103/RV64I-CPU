`include "./src/include/DEF.sv"
`include "./src/include/intf.sv"
`include "./src/PC.sv"
`include "./src/ALU.sv"
`include "./src/ImmExt.sv"
`include "./src/LDFilter.sv"
`include "./src/Memory.sv"
`include "./src/RegFile.sv"
`include "./src/BranchComp.sv"
`include "./src/Controller.sv"
`include "./src/Reg_D.sv"
`include "./src/Reg_M.sv"
`include "./src/Reg_E.sv"
`include "./src/Reg_W.sv"
module Core
    import DEF::*;
(
    input  logic clk,
    input  logic rst,
    output logic halt
);
    logic reg_w_en, stall;
    wb_sel_t wb_sel;
    /* verilator lint_off UNUSEDSIGNAL */
    logic [31:0] inst, inst_dummy, inst_D;
    /* verilator lint_on UNUSEDSIGNAL */
    next_pc_sel_t next_pc_sel;
    dw next_pc, current_pc, current_pc_plus_4, alu_out_as_pc, current_pc_D, current_pc_E, current_pc_M, current_pc_W;
    dw imm_ext_out, reg_write_data, rs1_read_data, rs2_read_data, reg_a0, reg_a1;
    dw alu_out, dm_read_data, ldfilter_out_data, alu_out_W;
    logic [2:0] W_f3;
    logic [4:0] rs1_index, rs2_index, W_rd;
    logic [7:0] im_w_mask, dm_w_mask;


    assign current_pc_plus_4 = current_pc + 64'd4;
    assign alu_out_as_pc = alu_out & (~64'd1);  // make the LSB be always zero
    assign next_pc = (next_pc_sel == NEXT_PC_SEL_TARGET) ? alu_out_as_pc : current_pc_plus_4;
    /* Program Counter */
    PC pc (
        .clk(clk),
        .rst(rst),
        .next_pc(next_pc),
        .stall(stall),
        .current_pc(current_pc)
    );

    /* Imstruction Memory */
    Memory im (
        .clk(clk),
        .w_mask(im_w_mask),
        .address(current_pc[15:0]),
        .write_data(64'd0),
        /* verilator lint_off UNUSEDSIGNAL */
        .read_data({inst_dummy, inst})
        /* verilator lint_on UNUSEDSIGNAL */
    );

    /* stage D reg */
    Reg_D reg_D(
        .clk(clk),
        .rst(rst),
        .current_pc(current_pc),
        .inst(inst),
        .stall(stall),
        .jb(next_pc_sel),
        .current_pc_D(current_pc_D),
        .inst_D(inst_D)
    );

    /* Immediate Extender */
    ImmExt immext (
        .inst(inst_D),
        .imm_ext_out(imm_ext_out)
    );

    /* Register File */
    assign rs1_index = inst_D[19:15];
    assign rs2_index = inst_D[24:20];
    always_comb begin
        unique if (wb_sel == SEL_PC_PLUS_4) begin
            reg_write_data = current_pc_W + 64'd4;;
        end else if (wb_sel == SEL_LOAD_DATA) begin
            reg_write_data = ldfilter_out_data;
        end else begin
            reg_write_data = alu_out_W;
        end
    end
    RegFile regfile (
        .clk(clk),
        .rst(rst),
        .rs1_index(rs1_index),
        .rs2_index(rs2_index),
        .w_en(reg_w_en),
        .rd_index(W_rd),
        .rd_data(reg_write_data),
        .rs1_data(rs1_read_data),
        .rs2_data(rs2_read_data),
        .reg_a0(reg_a0),
        .reg_a1(reg_a1)
    );

    /* MUX for reg data in D stage */
    dw rs1_data_D, rs2_data_D;
    D_data_sel D_rs1_data_sel, D_rs2_data_sel;
    assign rs1_data_D = (D_rs1_data_sel)? reg_write_data:rs1_read_data;
    assign rs2_data_D = (D_rs2_data_sel)? reg_write_data:rs2_read_data;

    /* stage E reg */
    dw rs1_data_E, rs2_data_E, imm_ext_out_E;
    Reg_E reg_E(
        .clk(clk),
        .rst(rst),
        .current_pc_D(current_pc_D),
        .rs1_data_D(rs1_data_D),
        .rs2_data_D(rs2_data_D),
        .sext_imm_D(imm_ext_out),
        .stall(stall),
        .jb(next_pc_sel),
        .current_pc_E(current_pc_E),
        .rs1_data_E(rs1_data_E),
        .rs2_data_E(rs2_data_E),
        .sext_imm_E(imm_ext_out_E)
    );

    /* ALU */
    E_data_sel E_rs1_data_sel, E_rs2_data_sel;
    dw rs1_or_current_pc_or_zero, rs2_or_imm, newest_rs1_data, newest_rs2_data, alu_out_M;
    alu_op1_sel_t alu_op1_sel;
    alu_op2_sel_t alu_op2_sel;
    logic is_lui;
    alu_control_packet_t alu_control;
    always_comb begin
        case(E_rs1_data_sel)
        W_FORWARDING_E: begin
            newest_rs1_data = reg_write_data;
        end
        M_FORWARDING_E: begin
            newest_rs1_data = alu_out_M;
        end
        default: begin
            newest_rs1_data = rs1_data_E;
        end
        endcase
    end
    always_comb begin
        case(E_rs2_data_sel)
        W_FORWARDING_E: begin
            newest_rs2_data = reg_write_data;
        end
        M_FORWARDING_E: begin
            newest_rs2_data = alu_out_M;
        end
        default: begin
            newest_rs2_data = rs2_data_E;
        end
        endcase
    end
    assign rs1_or_current_pc_or_zero = (is_lui) ? 64'd0 : ((alu_op1_sel == ALU_OP1_SEL_RS1) ? newest_rs1_data : current_pc_E);
    assign rs2_or_imm = (alu_op2_sel == ALU_OP2_SEL_RS2) ? newest_rs2_data : imm_ext_out_E;
    ALU alu (
        .alu_control(alu_control),
        .operand_1(rs1_or_current_pc_or_zero),
        .operand_2(rs2_or_imm),
        .alu_out(alu_out)
    );

    /* Branch Comparator */
    BranchCompControlIntf bc_control_intf ();
    BranchComp branchcomp (
        .operand_1(newest_rs1_data),
        .operand_2(newest_rs2_data),
        .control  (bc_control_intf)
    );
    
    /* stage M reg */
    dw rs2_data_M;
    Reg_M reg_M(
        .clk(clk),
        .rst(rst),
        .alu_out_E(alu_out),
        .rs2_data_E(newest_rs2_data),
        .current_pc_E(current_pc_E),
        .current_pc_M(current_pc_M),
        .alu_out_M(alu_out_M),
        .rs2_data_M(rs2_data_M)
    );

    /* Data Memory */
    Memory dm (
        .clk(clk),
        .w_mask(dm_w_mask),
        .address(alu_out_M[15:0]),
        .write_data(rs2_data_M),
        .read_data(dm_read_data)
    );

    /* stage W reg */
    dw ld_data_W;
    Reg_W reg_W(
        .clk(clk),
        .rst(rst),
        .alu_out_M(alu_out_M),
        .ld_data_M(dm_read_data),
        .current_pc_M(current_pc_M),
        .current_pc_W(current_pc_W),
        .alu_out_W(alu_out_W),
        .ld_data_W(ld_data_W)
    );

    /* Load-Data Filter */
    LDFilter ldfilter (
        .func3(W_f3),
        .in_data(ld_data_W),
        .out_data(ldfilter_out_data)
    );

    /* Controller */
    Controller controller (
        .clk(clk),
        .rst(rst),
        .inst(inst_D),
        .reg_a0(reg_a0),
        .reg_a1(reg_a1),
        .next_pc_sel(next_pc_sel),
        .im_w_mask(im_w_mask),
        .reg_w_en(reg_w_en),
        .alu_op1_sel(alu_op1_sel),
        .alu_op2_sel(alu_op2_sel),
        .is_lui(is_lui),
        .alu_control(alu_control),
        .bc_control(bc_control_intf),
        .dm_w_mask(dm_w_mask),
        .wb_sel(wb_sel),
        .halt(halt),
        .stall(stall),
        .W_rd(W_rd),
        .W_f3(W_f3),
        .D_rs1_data_sel(D_rs1_data_sel),
        .D_rs2_data_sel(D_rs2_data_sel),
        .E_rs1_data_sel(E_rs1_data_sel),
        .E_rs2_data_sel(E_rs2_data_sel)
    );
endmodule : Core

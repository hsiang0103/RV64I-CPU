module Core
    import DEF::*;
(
    input  logic clk,
    input  logic rst,
    output logic halt
);
    logic reg_w_en;
    wb_sel_t wb_sel;
    /* verilator lint_off UNUSEDSIGNAL */
    logic [31:0] inst, inst_dummy;
    /* verilator lint_on UNUSEDSIGNAL */
    logic next_pc_sel;
    dw next_pc, current_pc, current_pc_plus_4;
    dw imm_ext_out, reg_write_data, rs1_read_data, rs2_read_data;
    dw alu_out, dm_read_data, ldfilter_out_data;
    logic [2:0] func3;
    logic [4:0] rs1_index, rs2_index, rd_index;
    logic [7:0] im_w_mask, dm_w_mask;

    assign current_pc_plus_4 = current_pc + 64'd4;
    assign next_pc = (next_pc_sel) ? alu_out : current_pc_plus_4;
    /* Program Counter */
    PC pc (
        .clk(clk),
        .rst(rst),
        .next_pc(next_pc),
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

    /* Immediate Extender */
    ImmExt immext (
        .inst(inst),
        .imm_ext_out(imm_ext_out)
    );

    /* Register File */
    assign rs1_index = inst[19:15];
    assign rs2_index = inst[24:20];
    assign rd_index  = inst[11:7];
    always_comb begin
        unique if (wb_sel == SEL_PC_PLUS_4) begin
            reg_write_data = current_pc_plus_4;
        end else if (wb_sel == SEL_LOAD_DATA) begin
            reg_write_data = ldfilter_out_data;
        end else begin
            reg_write_data = alu_out;
        end
    end
    RegFile regfile (
        .clk(clk),
        .rst(rst),
        .rs1_index(rs1_index),
        .rs2_index(rs2_index),
        .w_en(reg_w_en),
        .rd_index(rd_index),
        .rd_data(reg_write_data),
        .rs1_data(rs1_read_data),
        .rs2_data(rs2_read_data)
    );

    /* ALU */
    dw rs1_or_current_pc_or_zero, rs2_or_imm;
    logic alu_op1_sel, alu_op2_sel, is_lui;
    alu_control_packet_t alu_control;
    assign rs1_or_current_pc_or_zero = (is_lui) ? 64'd0 : ((alu_op1_sel) ? rs1_read_data : current_pc);
    assign rs2_or_imm = (alu_op2_sel) ? rs2_read_data : imm_ext_out;
    ALU alu (
        .alu_control(alu_control),
        .operand_1(rs1_or_current_pc_or_zero),
        .operand_2(rs2_or_imm),
        .alu_out(alu_out)
    );

    /* Branch Comparator */
    BranchCompControlIntf bc_control_intf ();
    BranchComp branchcomp (
        .operand_1(rs1_read_data),
        .operand_2(rs2_read_data),
        .control  (bc_control_intf)
    );

    /* Data Memory */
    Memory dm (
        .clk(clk),
        .w_mask(dm_w_mask),
        .address(alu_out[15:0]),
        .write_data(rs2_read_data),
        .read_data(dm_read_data)
    );

    /* Load-Data Filter */
    assign func3 = inst[14:12];
    LDFilter ldfilter (
        .func3(func3),
        .in_data(dm_read_data),
        .out_data(ldfilter_out_data)
    );

    /* Controller */
    Controller controller (
        .inst(inst),
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
        .halt(halt)
    );
endmodule : Core

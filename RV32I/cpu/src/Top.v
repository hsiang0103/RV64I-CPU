/*`include "./src/RegFile.v"
`include "./src/Adder.v"
`include "./src/Controller.v"
`include "./src/decoder.v"
`include "./src/Imme_Ext.v"
`include "./src/JB_Unit.v"
`include "./src/LD_Filter.v"
`include "./src/Mux.v"
`include "./src/Mux3.v"
`include "./src/Reg_PC.v"
`include "./src/Reg_M.v"
`include "./src/Reg_D.v"
`include "./src/Reg_E.v"
`include "./src/Reg_W.v"
`include "./src/ALU.v"*/

module Top (input wire clk,
            input wire rst,
            input wire [31:0] W_in_ld_data,
            input wire [31:0] D_in_inst,
            output wire [3:0] F_im_w_en,
            output wire [3:0] M_dm_w_en,
            output wire [31:0] M_out_alu_out,
            output wire [31:0] M_out_rs2_data,
            output wire [31:0] pc);
    
    wire [31:0] D_pc;
    wire [31:0] E_pc;
    wire [31:0] a1_out;
    wire [31:0] D_out_inst;
    wire [4:0] rs1_index;
    wire [4:0] rs2_index;
    wire [31:0] E_in_sext_imme;
    wire [31:0] E_out_sext_imme;
    wire [31:0] rs1_data;
    wire [31:0] rs2_data;
    wire [31:0] wb_data;
    wire [31:0] E_out_rs1_data;
    wire [31:0] E_out_rs2_data;
    wire [31:0] newest_rs1_data;
    wire [31:0] newest_rs2_data;
    wire signed [31:0] operand1;
    wire signed [31:0] operand2;
    wire [31:0] W_out_ld_data;
    wire [31:0] M_in_alu_out;
    wire [31:0] ld_data_f;
    wire [31:0] W_out_alu_out;
    wire [31:0] jb_pc;
    wire [31:0] next_pc;
    wire [31:0] m1_out;
    wire [31:0] m2_out;
    wire [31:0] m7_out;
    wire [4:0] rd_index;
    wire [4:0] opcode;
    wire [2:0] func3;
    wire       func7;
    wire       D_rs1_data_sel;
    wire       D_rs2_data_sel;
    wire [1:0] E_rs1_data_sel;
    wire [1:0] E_rs2_data_sel;
    wire       E_jb_op1_sel;
    wire       E_alu_op1_sel;
    wire       E_alu_op2_sel;
    wire [4:0] E_op;
    wire [4:0] E_rd;
    wire [2:0] E_f3;
    wire       E_f7;
    wire       W_wb_data_sel;
    wire       W_wb_en;
    wire [4:0] W_rd;
    wire [2:0] W_f3;
    wire       next_pc_sel;
    wire       stall;
    Reg_PC procount(
    .clk(clk) ,
    .rst(rst) ,
    .current_pc(pc),
    .next_pc(next_pc),
    .stall(stall)
    );
    Reg_D RD(
    .clk(clk),
    .rst(rst),
    .D_in_inst(D_in_inst),
    .D_in_pc(pc),
    .jb(next_pc_sel),
    .stall(stall),
    .D_out_inst(D_out_inst),
    .D_out_pc(D_pc)
    );
    decoder DC(
    .inst(D_out_inst),
    .dc_out_func3(func3),
    .dc_out_func7(func7),
    .dc_out_rs1_index(rs1_index),
    .dc_out_rs2_index(rs2_index),
    .dc_out_rd_index(rd_index),
    .dc_out_opcode(opcode)
    );
    Controller CT(
    .opcode(opcode),
    .func3(func3),
    .func7(func7),
    .rd(rd_index),
    .rs1(rs1_index),
    .rs2(rs2_index),
    .clk(clk),
    .rst(rst),
    .alu_out(M_in_alu_out[0]),
    .next_pc_sel(next_pc_sel),
    .F_im_w_en(F_im_w_en),
    .D_rs1_data_sel(D_rs1_data_sel),
    .D_rs2_data_sel(D_rs2_data_sel),
    .E_rs1_data_sel(E_rs1_data_sel),
    .E_rs2_data_sel(E_rs2_data_sel),
    .E_jb_op1_sel(E_jb_op1_sel),
    .E_alu_op1_sel(E_alu_op1_sel),
    .E_alu_op2_sel(E_alu_op2_sel),
    .W_wb_data_sel(W_wb_data_sel),
    .W_wb_en(W_wb_en),
    .M_dm_w_en(M_dm_w_en),
    .E_op(E_op),
    .E_f3(E_f3),
    .E_rd(E_rd),
    .E_f7(E_f7),
    .W_f3(W_f3),
    .W_rd(W_rd),
    .stall(stall)
    );
    RegFile regfile(
    .clk(clk),
    .wb_en(W_wb_en),
    .wb_data(wb_data),
    .rd_index(W_rd),
    .rs1_index(rs1_index),
    .rs2_index(rs2_index),
    .rs1_data_out(rs1_data),
    .rs2_data_out(rs2_data)
    );
    Imme_Ext IE(
    .inst(D_out_inst),
    .imm_ext_out(E_in_sext_imme)
    );
    Mux M1(
    .A1(wb_data),
    .B0(rs1_data),
    .sel(D_rs1_data_sel),
    .Z(m1_out)
    );
    Mux M2(
    .A1(wb_data),
    .B0(rs2_data),
    .sel(D_rs2_data_sel),
    .Z(m2_out)
    );
    Reg_E RE(
    .clk(clk),
    .rst(rst),
    .E_in_rs1_data(m1_out),
    .E_in_rs2_data(m2_out),
    .E_in_sext_imme(E_in_sext_imme),
    .E_in_pc(D_pc),
    .jb(next_pc_sel),
    .stall(stall),
    .E_out_rs1_data(E_out_rs1_data),
    .E_out_rs2_data(E_out_rs2_data),
    .E_out_sext_imme(E_out_sext_imme),
    .E_out_pc(E_pc)
    );
    
    Mux3 M3(
    .A2(E_out_rs1_data),
    .B1(M_out_alu_out),
    .C0(wb_data),
    .sel(E_rs1_data_sel),
    .Z4(newest_rs1_data)
    );
    Mux3 M4(
    .A2(E_out_rs2_data),
    .B1(M_out_alu_out),
    .C0(wb_data),
    .sel(E_rs2_data_sel),
    .Z4(newest_rs2_data)
    );
    Mux M5(
    .A1(newest_rs1_data),
    .B0(E_pc),
    .sel(E_alu_op1_sel),
    .Z(operand1)
    );
    Mux M6(
    .A1(newest_rs2_data),
    .B0(E_out_sext_imme),
    .sel(E_alu_op2_sel),
    .Z(operand2)
    );
    Mux M7(
    .A1(newest_rs1_data),
    .B0(E_pc),
    .sel(E_jb_op1_sel),
    .Z(m7_out)
    );
    
    
    ALU A1(
    .opcode(E_op),
    .func3(E_f3),
    .func7(E_f7),
    .operand1(operand1),
    .operand2(operand2),
    .alu_out(M_in_alu_out)
    );
    JB_Unit JB(
    .opcode(E_op),
    .operand1(m7_out),
    .operand2(E_out_sext_imme),
    .jb_out(jb_pc)
    );
    Reg_M RM(
    .clk(clk),
    .rst(rst),
    .M_in_alu_out(M_in_alu_out),
    .M_in_rs2_data(newest_rs2_data),
    .M_out_alu_out(M_out_alu_out),
    .M_out_rs2_data(M_out_rs2_data)
    );
    Reg_W RW(
    .clk(clk),
    .rst(rst),
    .W_in_alu_out(M_out_alu_out),
    .W_in_ld_data(W_in_ld_data),
    .W_out_alu_out(W_out_alu_out),
    .W_out_ld_data(W_out_ld_data)
    );
    LD_Filter LD(
    .func3(W_f3),
    .ld_data(W_out_ld_data),
    .ld_data_f(ld_data_f)
    );
    Mux M8(
    .A1(ld_data_f),
    .B0(W_out_alu_out),
    .sel(W_wb_data_sel),
    .Z(wb_data)
    );
    Adder Add(
    .curr_pc(pc),
    .clk(clk),
    .next_pc(a1_out)
    );
    Mux M9(
    .A1(jb_pc),
    .B0(a1_out),
    .sel(next_pc_sel),
    .Z(next_pc)
    );
endmodule

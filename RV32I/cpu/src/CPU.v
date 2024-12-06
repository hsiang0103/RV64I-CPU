/*`include "./src/Top.v"
`include "./src/SRAM.v"*/

module CPU (input wire clk,
            input wire rst);
    
    wire [3:0] F_im_w_en;
    wire [3:0] M_dm_w_en;
    wire [31:0] pc;
    wire [31:0] M_out_alu_out;
    wire [31:0] D_in_inst;
    wire [31:0] M_out_rs2_data;
    wire [31:0] W_in_ld_data;
    
    Top t1(
    .clk(clk),
    .rst(rst),
    .M_out_rs2_data(M_out_rs2_data),
    .W_in_ld_data(W_in_ld_data),
    .F_im_w_en(F_im_w_en),
    .M_dm_w_en(M_dm_w_en),
    .pc(pc),
    .M_out_alu_out(M_out_alu_out),
    .D_in_inst(D_in_inst)
    );
    
    SRAM im(
    .clk(clk),
    .w_en(F_im_w_en),
    .address(pc[15:0]),
    .write_data(32'b0),
    .read_data(D_in_inst)
    );
    
    SRAM dm(
    .clk(clk),
    .w_en(M_dm_w_en),
    .address(M_out_alu_out[15:0]),
    .write_data(M_out_rs2_data),
    .read_data(W_in_ld_data)
    );
endmodule

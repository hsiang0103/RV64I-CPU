module Controller
    import DEF::*;
(
    /* inst information */
    input inst_t inst,
    /* next PC select */
    output logic next_pc_sel,
    /* IM write control */
    output logic [7:0] im_w_mask,
    /* Register File Control */
    output logic reg_w_en,
    /* ALU control */
    output logic alu_op1_sel,
    output logic alu_op2_sel,
    output logic is_lui,
    output alu_control_packet_t alu_control,
    /* Branch Comparator control */
    BranchCompControlIntf.ControllerSide bc_control,
    /* DM write control */
    output logic [7:0] dm_w_mask,
    /* write-back select */
    output wb_sel_t wb_sel,
    /* halt signal (for testbench to monitor) */
    output logic halt
);
endmodule

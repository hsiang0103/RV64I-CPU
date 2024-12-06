module Imme_Ext (input wire [31:0] inst,
                 output reg[31:0] imm_ext_out);
    wire [4:0]opcode;
    parameter R_type = 5'b01100;
    parameter I_type = 5'b00100;
    parameter load   = 5'b00000;
    parameter JALR   = 5'b11001;
    parameter S_type = 5'b01000;
    parameter B_type = 5'b11000;
    parameter JAL    = 5'b11011;
    parameter LUI    = 5'b01101;
    parameter auipc  = 5'b00101;
    
    assign opcode = inst[6:2];
    
    always @(inst[31:7] or opcode)
    begin
        case(opcode)
            R_type:
            begin
                imm_ext_out = 32'b0;
            end
            I_type:
            begin
                if (inst[14:12] == 3'b001 || inst[14:12] == 3'b101)
                begin
                    imm_ext_out = {{27{1'b0}} , inst[24:20]};
                end
                else
                begin
                    imm_ext_out = {{20{inst[31]}} , inst[31:20]};
                end
            end
            load:
            begin
                imm_ext_out = {{20{inst[31]}} , inst[31:20]};
            end
            JALR:
            begin
                imm_ext_out = {{20{inst[31]}} , inst[31:20]};
            end
            S_type:
            begin
                imm_ext_out = {{20{inst[31]}} , inst[31:25] , inst[11:7]};
            end
            B_type:
            begin
                imm_ext_out = {{20{inst[31]}} , inst[7] , inst[30:25] , inst[11:8] , 1'b0};
            end
            LUI:
            begin
                imm_ext_out = {inst[31:12] , 12'b0};
            end
            auipc:
            begin
                imm_ext_out = {inst[31:12] , 12'b0};
            end
            JAL:
            begin
                imm_ext_out = {{12{inst[31]}} , inst[19:12] , inst[20] , inst[30:21] , 1'b0};
            end
            default:
            begin
                imm_ext_out = 32'h0;
            end
        endcase
    end
endmodule

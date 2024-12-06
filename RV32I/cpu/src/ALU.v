module ALU (input wire [4:0] opcode,
            input wire [2:0] func3,
            input wire func7,
            input wire signed [31:0] operand1,
            input wire signed [31:0] operand2,
            output reg [31:0] alu_out);
    
    parameter AND  = 3'b111;
    parameter OR   = 3'b110;
    parameter SR   = 3'b101;
    parameter XOR  = 3'b100;
    parameter SLL  = 3'b001;
    parameter SLT  = 3'b010;
    parameter SLTU = 3'b011;
    parameter ADD  = 3'b000;
    
    
    always @(opcode or func3 or func7 or operand1 or operand2)
    begin
        casex (opcode)
            5'b0x100:
            begin
                case (func3)
                    AND:
                    begin
                        alu_out = operand1 & operand2;
                    end
                    OR:
                    begin
                        alu_out = operand1 | operand2;
                    end
                    XOR:
                    begin
                        alu_out = operand1 ^ operand2;
                    end
                    SR:
                    begin
                        alu_out = (func7 == 1'b1)? operand1 >>> (operand2%32) : operand1 >> ($unsigned(operand2)%32);
                    end
                    SLL:
                    begin
                        alu_out = operand1 << ($unsigned(operand2)%32);
                    end
                    SLT:
                    begin
                        alu_out = ($signed(operand1) < $signed(operand2))? 32'b1 : 32'b0;
                    end
                    SLTU:
                    begin
                        alu_out = ($signed(operand1) < $unsigned(operand2))? 32'b1 : 32'b0;
                    end
                    ADD:
                    begin
                        if (opcode == 5'b00100)
                        begin
                            alu_out = operand1 + operand2;
                        end
                        else
                        begin
                            alu_out = (func7)? operand1 - operand2 : operand1 + operand2;
                        end
                    end
                endcase
            end
            5'b01101:
            begin
                alu_out = operand2;
            end
            5'b00101:
            begin
                alu_out = operand1 + operand2;
            end
            5'b0x000:
            begin
                alu_out = operand1 + operand2;
            end
            5'b110x1:
            begin
                alu_out = operand1 + 32'd4;
            end
            5'b11000:
            begin
                case(func3)
                    3'b000:
                    begin
                        alu_out = (operand1 == operand2)? 32'b1 : 32'b0;
                    end
                    3'b001:
                    begin
                        alu_out = (operand1 != operand2)? 32'b1 : 32'b0;
                    end
                    3'b100:
                    begin
                        alu_out = ($signed(operand1) < $signed(operand2))? 32'b1 : 32'b0;
                    end
                    3'b101:
                    begin
                        alu_out = ($signed(operand1) >= $signed(operand2))? 32'b1 : 32'b0;
                    end
                    3'b110:
                    begin
                        alu_out = ($signed(operand1) < $unsigned(operand2))? 32'b1 : 32'b0;
                    end
                    3'b111:
                    begin
                        alu_out = ($signed(operand1) >= $unsigned(operand2))? 32'b1 : 32'b0;
                    end
                    default:
                    begin
                        alu_out = 32'h0;
                    end
                endcase
            end
            default:
            begin
                alu_out = 32'h0;
            end
        endcase
    end
endmodule

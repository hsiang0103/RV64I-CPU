module RegFile (input wire clk,
                input wire wb_en,
                input wire [31:0] wb_data,
                input wire [4:0] rd_index,
                input wire [4:0] rs1_index,
                input wire [4:0] rs2_index,
                output wire [31:0] rs1_data_out,
                output wire [31:0] rs2_data_out);
    
    reg [31:0] registers [0:31];
    
    assign rs1_data_out = registers[rs1_index];
    assign rs2_data_out = registers[rs2_index];
    
    always @(posedge clk)
    begin
        registers[0] <= 32'b0;
        if (wb_en == 1'b1 && rd_index != 5'b00000)
        begin
            registers[rd_index] <= wb_data;
        end
        else
        begin
            registers[rd_index] <= registers[rd_index];
        end
    end
endmodule

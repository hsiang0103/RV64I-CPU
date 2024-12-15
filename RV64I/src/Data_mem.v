module Data_mem (input wire clk,
                 input wire rst,
                 input wire rden,
                 input wire wren,
                 input wire [31:0] rdaddress,
                 input wire [31:0] wraddress,
                 input wire [63:0] write_data,
                 output reg [63:0] read_data);
    
    reg [7:0] mem [0:65535];
    integer i;
    //read//
    always @(rden or mem or rdaddress)
    begin
        if (rden)
        begin
            read_data        <= mem[rdaddress];
            read_data[15:8]  <= mem[rdaddress+1];
            read_data[23:16] <= mem[rdaddress+2];
            read_data[31:24] <= mem[rdaddress+3];
            read_data[39:32] <= mem[rdaddress+4];
            read_data[47:40] <= mem[rdaddress+5];
            read_data[55:48] <= mem[rdaddress+6];
            read_data[63:56] <= mem[rdaddress+7];
        end
    end
    //write//
    always @(posedge clk or posedge rst)
    begin
        if (wren)
        begin
            mem[wraddress]   <= write_data[7:0];
            mem[wraddress+1] <= write_data[15:8];
            mem[wraddress+2] <= write_data[23:16];
            mem[wraddress+3] <= write_data[31:24];
            mem[wraddress+4] <= write_data[39:32];
            mem[wraddress+5] <= write_data[47:40];
            mem[wraddress+6] <= write_data[55:48];
            mem[wraddress+7] <= write_data[63:56];
        end
    end
endmodule

`timescale 1ns / 1ps
module i_cache_test();
    reg clk;
    reg rst;
    
    wire [31:0] data_in;
    wire [31:0] data_out;
    wire [15:0] rd_addr;
    wire        rd_en;
    wire [15:0] wr_addr;
    wire        wr_en;
    wire data_ready;
    
    reg  [15:0] i_cache_addr = 0;
    reg  [31:0] i_cache_din  = 0;
    reg         i_cache_rden = 0;
    reg   [3:0] i_cache_wren = 0;
    wire        i_cache_hit_miss;
    wire [31:0] i_cache_q;
    
    icache CACHE (
    .clk(clk),
    .rst(rst),
    .address(i_cache_addr),
    .data_in_cpu(i_cache_din),
    .data_in_mem(data_out),
    .rd(i_cache_rden),
    .wr(i_cache_wren),
    .hit_miss(i_cache_hit_miss),
    .data2cpu(i_cache_q),
    .data2mem(data_in),
    .m_rd_address(rd_addr),
    .m_wr_address(wr_addr),
    .mrden(rd_en),
    .mwren(wr_en),
    .data_ready(data_ready)
    );
    
    SRAM MEM (
    .clk(clk),
    .write_data(data_in),
    .rdaddress(rd_addr),
    .wraddress(wr_addr),
    .rden(rd_en),
    .wren(wr_en),
    .read_data(data_out)
    );
    
    integer i;
    always
    begin
    $readmemh("main.hex", MEM.mem);
    rst = 1;
    # 200;
    rst = 0;
    
    # 150;
    // read miss
    i_cache_addr <= 16'h0404;
    i_cache_din  <= 0;
    i_cache_rden <= 1;
    i_cache_wren <= 4'b0000;
    
    @(posedge clk)
    wait(CACHE.data_ready);
    @(posedge clk)
    
    // read miss
    i_cache_addr <= 16'h1404;
    i_cache_din  <= 0;
    i_cache_rden <= 1;
    i_cache_wren <= 4'b0000;
    
    @(posedge clk)
    wait(CACHE.data_ready);
    @(posedge clk)
    
    // read miss
    i_cache_addr <= 16'h2404;
    i_cache_din  <= 0;
    i_cache_rden <= 1;
    i_cache_wren <= 4'b0000;
    
    @(posedge clk)
    wait(CACHE.data_ready);
    @(posedge clk)
    
    // read hit
    i_cache_addr <= 16'h2404;
    i_cache_din  <= 0;
    i_cache_rden <= 1;
    i_cache_wren <= 4'b0000;
    
    @(posedge clk)
    wait(CACHE.data_ready);
    @(posedge clk)
    
    // read hit
    i_cache_addr <= 16'h1404;
    i_cache_din  <= 0;
    i_cache_rden <= 1;
    i_cache_wren <= 4'b0000;
    
    @(posedge clk)
    wait(CACHE.data_ready);
    @(posedge clk)
    
    // read hit
    i_cache_addr <= 16'h0404;
    i_cache_din  <= 0;
    i_cache_rden <= 1;
    i_cache_wren <= 4'b0000;
    
    @(posedge clk)
    wait(CACHE.data_ready);
    @(posedge clk)
    
    // write miss
    i_cache_addr <= 16'h0000;
    i_cache_din  <= 32'h11111111;
    i_cache_rden <= 0;
    i_cache_wren <= 4'b0011;
    
    @(posedge clk)
    wait(CACHE.data_ready);
    @(posedge clk)
    
    // write miss
    i_cache_addr <= 16'h1000;
    i_cache_din  <= 32'h22222222;
    i_cache_rden <= 0;
    i_cache_wren <= 4'b1111;
    
    @(posedge clk)
    wait(CACHE.data_ready);
    @(posedge clk)
    
    // read hit
    i_cache_addr <= 16'h0000;
    i_cache_din  <= 0;
    i_cache_rden <= 1;
    i_cache_wren <= 0;
    
    @(posedge clk)
    wait(CACHE.data_ready);
    @(posedge clk)
    
    // read miss
    i_cache_addr <= 16'h2000;
    i_cache_din  <= 0;
    i_cache_rden <= 1;
    i_cache_wren <= 0;
    
    @(posedge clk)
    wait(CACHE.data_ready);
    @(posedge clk)
    
    // write hit
    i_cache_addr <= 16'h2000;
    i_cache_din  <= 32'h33333333;
    i_cache_rden <= 0;
    i_cache_wren <= 4'b0001;
    
    @(posedge clk)
    wait(CACHE.data_ready);
    @(posedge clk)
    $finish;
    end

    always
    begin
    clk = 1'b1;
    #25;
    clk = 1'b0;
    #25;
    end
endmodule

`define TAG 15:10		// position of tag in address
`define INDEX 9:2	    // position of index in address
`define OFFSET 1:0		// position of offset in address

// 15 14 13 12 11 10 9  8  7  6  5  4  3  2  1  0
// |---------------|----------------------|-----|
// |TAG            |INDEX                 |OFF  |

module icache (input wire clk,
               input wire rst,
               input wire [15:0] address,       // address form CPU
               input wire [31:0] data_in_cpu,   // data from CPU (for store instruction)
               input wire [31:0] data_in_mem,   // data from memory (for store instruction)
               input wire rd,                   // read instruction, 1 for lpad instruction
               input wire [3:0] wr,             // write instruction, 1 for store instruction
               output wire data_ready,
               output wire hit_miss,            // 1 for hit, 0 while handling miss
               output wire [31:0] data2cpu,     // data from cache to CPU
               output wire [31:0] data2mem,     // data from cache to memory
               output wire [15:0] m_rd_address, // memory read address
               output wire [15:0] m_wr_address, // memory write address
               output wire mrden,               // read enable, 1 for reading from memory
               output wire mwren);              // write enable, 1 for writing to memory
    
    // cache data
    reg					valid [0:255];
    reg					lru   [0:255];
    reg [5:0]	        tag   [0:255];
    reg [31:0]	        mem   [0:255];
    
    parameter IDLE = 0;
    parameter MISS = 1;
    parameter DONE = 2;
    integer i;
    
    reg [1:0] cs, ns;
    reg [31:0] _data2cpu;
    reg [31:0] _data2mem;
    reg [31:0] _m_wr_address;
    reg _mwren;
    wire [31:0] mask;
    
    assign mrden        = rd && !((valid1[address[`INDEX]] && (tag1[address[`INDEX]] == address[`TAG])) || (valid2[address[`INDEX]] && (tag2[address[`INDEX]] == address[`TAG])));
    assign mwren        = _mwren;
    assign data2mem     = _data2mem;
    assign m_rd_address = address;
    assign m_wr_address = _m_wr_address;
    assign data2cpu     = _data2cpu;
    assign data_ready   = (cs == DONE);
    assign mask         = (wr == 4'b1111)? 32'hFFFFFFFF : (wr == 4'b0011)? 32'h0000FFFF : (wr == 4'b0001)? 32'h000000FF : 32'b0;
    
    always @(posedge clk or posedge rst)
    begin
        if (rst)
        begin
            cs <= IDLE;
        end
        else
        begin
            cs <= ns;
        end
    end
    
    assign hit_miss = (cs == IDLE) && (rd || wr) && ((valid1[address[`INDEX]] && (tag1[address[`INDEX]] == address[`TAG])) || (valid2[address[`INDEX]] && (tag2[address[`INDEX]] == address[`TAG])));
    
    always @(cs or rd or wr or hit_miss or counter)
    begin
        case(cs)
            IDLE:   ns = (rd || wr)? ((hit_miss)? DONE : MISS) : IDLE;
            MISS:   ns = DONE;
            DONE:   ns = IDLE;
            default:ns = IDLE;
        endcase
    end
    
    always @(posedge clk or posedge rst)
    begin
        if (rst)
        begin
            for(i = 0; i < 256; i = i + 1)
            begin
                valid[i] <= 0;
                mem[i]   <= 0;
                tag[i]   <= 0;
            end
            _data2mem     <= 0;
            _mwren        <= 0;
            _m_wr_address <= 0;
            _data2cpu     <= 0;
        end
        else
        begin
            case(cs)
                IDLE:
                begin
                    if (hit_miss)
                    begin
                        if (rd) // read
                        begin
                            _data2cpu <= mem[address[`INDEX]];
                        end
                        else    // write
                        begin
                            _data2cpu            <= 32'b0;
                            mem[address[`INDEX]] <= mask & data_in_cpu;
                        end
                    end
                end
                MISS:
                begin
                    if (rd)
                    begin
                        // read miss, take data from memory
                        _data2cpu              <= data_in_mem;
                        tag[address[`INDEX]]   <= address[`TAG];
                        valid[address[`INDEX]] <= 1;
                    end
                    else
                    begin
                        // write not allocate
                        _data2cpu     <= 0;
                        _m_wr_address <= address;
                        _mwren        <= 1;
                        _data2mem     <= data2cpu;
                    end
                end
                DONE:
                begin
                    _data2cpu <= 0;
                end
            endcase
        end
    end
endmodule

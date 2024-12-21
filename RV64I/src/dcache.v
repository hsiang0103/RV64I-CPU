`define TAG 15:7		// position of tag in address
`define INDEX 6:2	    // position of index in address
`define OFFSET 1:0		// position of offset in address
`define MEMORY_READ_DELAY 10

// 15 14 13 12 11 10 9  8  7  6  5  4  3  2  1  0
// |---------------|----------------------|-----|
// |TAG            |INDEX                 |OFF  |

module dcache (input wire clk,
               input wire rst,
<<<<<<< HEAD
               input wire [15:0] address,       // address form CPU
=======
               input wire [31:0] address,       // address form CPU
>>>>>>> 296d06dfcf9f0ca3c8ba8ef7898496458f928f96
               input wire [63:0] data_in_cpu,   // data from CPU (for store instruction)
               input wire [63:0] data_in_mem,   // data from memory (for store instruction)
               input wire rd,                   // read instruction, 1 for load instruction
               input wire [7:0] wr,             // write instruction, 1 for store instruction
               output wire data_ready,
<<<<<<< HEAD
               output reg [63:0] data2cpu,      // data from cache to CPU
               output reg [63:0] data2mem,      // data from cache to memory
               output wire [15:0] m_rd_address, // memory read address
               output reg [15:0] m_wr_address,  // memory write address
               output wire mrden,               // read enable, 1 for reading from memory
               output reg [7:0] mwren           // write enable, 1 for writing to memory
);           
=======
               output wire hit_miss,            // 1 for hit, 0 while handling miss
               output wire [63:0] data2cpu,     // data from cache to CPU
               output wire [63:0] data2mem,     // data from cache to memory
               output wire [31:0] m_rd_address, // memory read address
               output wire [31:0] m_wr_address, // memory write address
               output wire mrden,               // read enable, 1 for reading from memory
               output wire [7:0] mwren);              // write enable, 1 for writing to memory
>>>>>>> 296d06dfcf9f0ca3c8ba8ef7898496458f928f96
    
    // WAY 1 cache data
    reg					valid1 [0:31];
    reg					dirty1 [0:31];
    reg					lru1   [0:31];
    reg [8:0]	        tag1   [0:31];
    reg [63:0]	        mem1   [0:31];
<<<<<<< HEAD
    reg [1:0]           smode1 [0:31];
=======
>>>>>>> 296d06dfcf9f0ca3c8ba8ef7898496458f928f96
    
    // WAY 2 cache data
    reg					valid2 [0:31];
    reg					dirty2 [0:31];
    reg					lru2   [0:31];
    reg [8:0]           tag2   [0:31];
    reg [63:0]          mem2   [0:31];
<<<<<<< HEAD
    reg [1:0]           smode2 [0:31];
=======
>>>>>>> 296d06dfcf9f0ca3c8ba8ef7898496458f928f96
    
    parameter IDLE    = 0;
    parameter MISS    = 1;
    parameter WAITMEM = 2;
    parameter DONE    = 3;
<<<<<<< HEAD

    wire [1:0] store_mode;
    wire hit_miss;

    integer i;
    
    reg [1:0] cs, ns;
=======
    integer i;
    
    reg [1:0] cs, ns;
    reg [63:0] _data2cpu;
    reg [63:0] _data2mem;
    reg [31:0] _m_wr_address;
    reg [7:0] _mwren;
>>>>>>> 296d06dfcf9f0ca3c8ba8ef7898496458f928f96
    reg [7:0] counter;
    wire [63:0] mask;
    
    assign mrden        = (cs == WAITMEM && counter == `MEMORY_READ_DELAY);
<<<<<<< HEAD
    assign m_rd_address = address;
    assign data_ready   = (cs == DONE);
    assign mask         = (wr == 8'b1111_1111)? 64'hFFFF_FFFF_FFFF_FFFF : 
                          (wr == 8'b0000_1111)? 64'h0000_0000_FFFF_FFFF : 
                          (wr == 8'b0000_0011)? 64'h0000_0000_0000_FFFF : 
                          (wr == 8'b0000_0001)? 64'h0000_0000_0000_00FF : 64'b0;
    assign store_mode   = (wr == 8'b1111_1111)? 0 :
                          (wr == 8'b0000_1111)? 1 :
                          (wr == 8'b0000_0011)? 2 : 3;
=======
    assign mwren        = _mwren;
    assign data2mem     = _data2mem;
    assign m_rd_address = address;
    assign m_wr_address = _m_wr_address;
    assign data2cpu     = _data2cpu;
    assign data_ready   = (cs == DONE);
    assign mask         = (wr == 8'b1111_1111)? 64'hFFFF_FFFF_FFFF_FFFF : 
                        (wr == 8'b0000_1111)? 64'h0000_0000_FFFF_FFFF : 
                        (wr == 8'b0000_0011)? 64'h0000_0000_0000_FFFF : 
                        (wr == 8'b0000_0001)? 64'h0000_0000_0000_00FF : 64'b0;
>>>>>>> 296d06dfcf9f0ca3c8ba8ef7898496458f928f96
    
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
    
    assign hit_miss = (rd || wr) && (cs == IDLE) 
    && ((valid1[address[`INDEX]] && (tag1[address[`INDEX]] == address[`TAG])) || (valid2[address[`INDEX]] && (tag2[address[`INDEX]] == address[`TAG])));
    
    always @(cs or rd or wr or hit_miss or counter)
    begin
        case(cs)
            IDLE:   ns  = (rd || wr)? ((rd)? ((hit_miss)? (DONE) : (WAITMEM)) : ((hit_miss)? (DONE) : (MISS))) : (IDLE);
<<<<<<< HEAD
            //IDLE:   ns  = (rd)? ((hit_miss)? DONE : WAITMEM) : ((wr)? ((hit_miss)? DONE : MISS) : IDLE);
=======
            IDLE:   ns  = (rd)? ((hit_miss)? DONE : WAITMEM) : ((wr)? ((hit_miss)? DONE : MISS) : IDLE);
>>>>>>> 296d06dfcf9f0ca3c8ba8ef7898496458f928f96
            MISS:   ns  = DONE;
            WAITMEM: ns = (counter == `MEMORY_READ_DELAY)? MISS : WAITMEM;
            DONE:   ns  = IDLE;
            default:ns  = IDLE;
        endcase
    end
    
    always @(posedge clk or posedge rst)
    begin
        if (rst)
        begin
            for(i = 0; i < 32; i = i + 1)
            begin
                valid1[i] <= 0;
                valid2[i] <= 0;
                dirty1[i] <= 0;
                dirty2[i] <= 0;
                lru1[i]   <= 0;
                lru2[i]   <= 0;
                mem1[i]   <= 0;
                mem2[i]   <= 0;
                tag1[i]   <= 0;
                tag2[i]   <= 0;
<<<<<<< HEAD
                smode1[i] <= 0;
                smode2[i] <= 0;
            end
            data2mem      <= 0;
            data2cpu      <= 0;
            mwren         <= 0;
            m_wr_address  <= 0;
=======
            end
            _data2mem     <= 0;
            _mwren        <= 0;
            _m_wr_address <= 0;
            _data2cpu     <= 0;
>>>>>>> 296d06dfcf9f0ca3c8ba8ef7898496458f928f96
            counter       <= 0;
        end
        else
        begin
            case(cs)
                IDLE:
                begin
                    counter <= 0;
                    if (hit_miss)
                    begin
                        if (valid1[address[`INDEX]] && (tag1[address[`INDEX]] == address[`TAG]))
                        begin
                            if (rd) // read
                            begin
<<<<<<< HEAD
                                data2cpu <= mem1[address[`INDEX]];
                            end
                            else    // write
                            begin
                                data2cpu                <= 64'b0;
                                mem1[address[`INDEX]]   <= mask & data_in_cpu;
                                dirty1[address[`INDEX]] <= 1;
                                smode1[address[`INDEX]] <= store_mode;
=======
                                _data2cpu <= mem1[address[`INDEX]];
                            end
                            else    // write
                            begin
                                _data2cpu               <= 64'b0;
                                mem1[address[`INDEX]]   <= mask & data_in_cpu;
                                dirty1[address[`INDEX]] <= 1;
>>>>>>> 296d06dfcf9f0ca3c8ba8ef7898496458f928f96
                            end
                            // one for recent used
                            lru1[address[`INDEX]] <= 1;
                            lru2[address[`INDEX]] <= 0;
                        end
                        else
                        begin
                            if (rd) // read
                            begin
<<<<<<< HEAD
                                data2cpu <= mem2[address[`INDEX]];
                            end
                            else    // write
                            begin
                                data2cpu               <= 64'b0;
                                mem2[address[`INDEX]]   <= mask & data_in_cpu;
                                dirty2[address[`INDEX]] <= 1;
                                smode2[address[`INDEX]] <= store_mode;
=======
                                _data2cpu <= mem2[address[`INDEX]];
                            end
                            else    // write
                            begin
                                _data2cpu               <= 64'b0;
                                mem2[address[`INDEX]]   <= mask & data_in_cpu;
                                dirty2[address[`INDEX]] <= 1;
>>>>>>> 296d06dfcf9f0ca3c8ba8ef7898496458f928f96
                            end
                            lru1[address[`INDEX]] <= 0;
                            lru2[address[`INDEX]] <= 1;
                        end
                    end
                    else
                    begin
<<<<<<< HEAD
                        data2cpu <= 0;
=======
                        _data2cpu <= 0;
>>>>>>> 296d06dfcf9f0ca3c8ba8ef7898496458f928f96
                    end
                end
                MISS:
                begin
                    // read miss, take data from memory
                    if (rd)
                    begin
<<<<<<< HEAD
                        data2cpu <= data_in_mem;
                    end
                    else
                    begin
                        data2cpu <= 0;
=======
                        _data2cpu <= data_in_mem;
                    end
                    else
                    begin
                        _data2cpu <= 0;
>>>>>>> 296d06dfcf9f0ca3c8ba8ef7898496458f928f96
                    end
                    
                    // check way 1
                    if (lru1[address[`INDEX]] == 0)
                    begin
                        // if dirty, write back to memory
                        if (dirty1[address[`INDEX]] == 1)
                        begin
<<<<<<< HEAD
                            m_wr_address <= {tag1[address[`INDEX]],address[`INDEX],2'b0};
                            mwren        <= (smode1[address[`INDEX]] == 0)? 8'b11111111 :
                                            (smode1[address[`INDEX]] == 1)? 8'b00001111 :
                                            (smode1[address[`INDEX]] == 2)? 8'b00000011 : 8'b00000001;
                            data2mem     <= mem1[address[`INDEX]];
=======
                            _m_wr_address <= {32'b0, tag1[address[`INDEX]],address[`INDEX],2'b0};
                            _mwren        <= 8'b00001111;
                            _data2mem     <= mem1[address[`INDEX]];
>>>>>>> 296d06dfcf9f0ca3c8ba8ef7898496458f928f96
                        end
                        // write allocate
                        tag1[address[`INDEX]]   <= address[`TAG];
                        valid1[address[`INDEX]] <= 1;
                        lru1[address[`INDEX]]   <= 1;
                        lru2[address[`INDEX]]   <= 0;
                        if (rd)
                        begin // read miss
                            dirty1[address[`INDEX]] <= 0;
                            mem1[address[`INDEX]]   <= data_in_mem;
                        end
                        else
                        begin // write miss
                            dirty1[address[`INDEX]] <= 1;
                            mem1[address[`INDEX]]   <= mask & data_in_cpu;
<<<<<<< HEAD
                            smode1[address[`INDEX]] <= store_mode;
=======
>>>>>>> 296d06dfcf9f0ca3c8ba8ef7898496458f928f96
                        end
                    end
                    // if all valid, find least recent use
                    // check way 2
                    else if (lru2[address[`INDEX]] == 0)
                    begin
                        // if dirty, write back to memory
                        if (dirty2[address[`INDEX]] == 1)
                        begin
<<<<<<< HEAD
                            m_wr_address <= {tag2[address[`INDEX]],address[`INDEX],2'b0};
                            mwren        <= (smode2[address[`INDEX]] == 0)? 8'b11111111 :
                                            (smode2[address[`INDEX]] == 1)? 8'b00001111 :
                                            (smode2[address[`INDEX]] == 2)? 8'b00000011 : 8'b00000001;
                            data2mem     <= mem2[address[`INDEX]];
=======
                            _m_wr_address <= {32'b0, tag2[address[`INDEX]],address[`INDEX],2'b0};
                            _mwren        <= 8'b00001111;
                            _data2mem     <= mem2[address[`INDEX]];
>>>>>>> 296d06dfcf9f0ca3c8ba8ef7898496458f928f96
                        end
                        // write allocate
                        tag2[address[`INDEX]]   <= address[`TAG];
                        valid2[address[`INDEX]] <= 1;
                        lru1[address[`INDEX]]   <= 0;
                        lru2[address[`INDEX]]   <= 1;
                        if (rd)
                        begin // read miss
                            dirty2[address[`INDEX]] <= 0;
                            mem2[address[`INDEX]]   <= data_in_mem;
                        end
                        else
                        begin // write miss
                            dirty2[address[`INDEX]] <= 1;
                            mem2[address[`INDEX]]   <= mask & data_in_cpu;
<<<<<<< HEAD
                            smode2[address[`INDEX]] <= store_mode;
=======
>>>>>>> 296d06dfcf9f0ca3c8ba8ef7898496458f928f96
                        end
                    end
                    else
                    begin
                    end
                end
                WAITMEM:
                begin
                    counter <= counter + 1;
                end
                DONE:
                begin
<<<<<<< HEAD
                    mwren    <= 0;
                    data2cpu <= 0;
=======
                    _mwren    <= 0;
                    _data2cpu <= 0;
>>>>>>> 296d06dfcf9f0ca3c8ba8ef7898496458f928f96
                end
            endcase
        end
    end
endmodule
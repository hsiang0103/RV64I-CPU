`timescale 1ns/10ps
`define CYCLE 10.0
`define MAX 10000000
`include "./Top.v"

module top_tb;
    logic clk, rst;
    integer err, i, handler;
    string prog, prog_path, filename;
    string testbench_data[49] = {"add", "addi", "addiw", "addw", "and", "andi", "auipc", "beq", "bge", "bgeu", "blt", "bltu", "bne", "jal", "jalr", "lb", "lbu", "lh", "lhu", "lw", "lwu", "ld", "lui", "or", "ori", "sb", "sh", "sw", "sd", "sll", "slli", "slliw", "sllw", "slt", "slti", "sltiu", "sltu", "sra", "srai", "sraiw", "sraw", "srl", "srli", "srliw", "srlw", "sub", "subw", "xor", "xori"};
    Top top (.clk(clk), .rst(rst));

    always #(`CYCLE/2) clk = ~clk;

    initial begin
        err = 0;
        clk = 0;
        if($value$plusargs("PROG=%s", prog)) begin
            if(prog == "prog0") begin
                if($value$plusargs("FILE=%s", filename)) begin
                    if(filename == "all") begin
                        for (i = 0; i < 50; i++) begin
                            rst = 1;
                            prog_path = $sformatf("./test/prog0/%s.hex", testbench_data[i]);
                            handler = $fopen(prog_path, "r");
                            if (handler == 0) begin
                                $display("\n\n\nError !!! Not found \"%s\"\n\n\n", prog_path);
                                $finish;
                            end
                            $readmemh(prog_path, top.im.mem);
                            $readmemh(prog_path, top.dm.mem);
                            #(`CYCLE) rst = 0;
                            wait(top.current_pc == 64'h0000001c);
                            if (top.reg_file.registers[3] === 64'd0) begin
                                $display("%5s | Pass", testbench_data[i]);
                            end else begin
                                $display("%5s | Error %h", testbench_data[i], top.reg_file.registers[3]);
                                err = err + 1;
                            end
                        end
                        result(err);
                        $finish;
                    end else begin
                        prog_path = $sformatf("./test/prog0/%s.hex", filename);
                    end
                end
            end else begin
                prog_path = $sformatf("./test/prog%s/main.hex", prog);
            end
        end

        // Handle file error
        handler = $fopen(prog_path, "r");
        if (handler == 0) begin
            $display("\n\n\nError !!! Not found \"%s\"\n\n\n", prog_path);
            $finish;
        end
        
        clk = 0;
        rst = 1;

        // Read .hex file
        $readmemh(prog_path, top.im.mem);
        $readmemh(prog_path, top.dm.mem);

        // Begin Running !
        #(`CYCLE) rst = 0;

        // Wait until end of execution
        wait(top.current_pc == 64'h0000001c);
        if (top.reg_file.registers[3] === 64'd0) begin
            $display("Pass");
        end else begin
            $display("Error %h", top.reg_file.registers[3]);
            err = err + 1;
        end

        // Print result
        result(err);
        $finish;
    end

    task result;
        input integer err;
        begin
            if (err === 0)
            begin
                $display("                                        ⠰⣣⣿⣣⢟⡴⣿⢏⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⡜⣿⣿⣿⣿⣿⣧       ");
                $display("                                       ⣴⣿⣿⠃⠞⣼⣿⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢹⣿⣿⣿⣿⠋⠠       ");
                $display("                                     ⢀⡜⣯⣶⢇⣘⢰⣿⡏⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⡇⣿⡟⡟⡇⢀⡆⠀⠀⠀⠀⠀⠀ ");
                $display("                                     ⣼⢧⣿⡿⣼⡟⢸⣿⢡⠁⣿⣿⣿⣿⣿⡇⣿⣿⣿⣿⢿⣿⢝⠟⣿⠀⠈⡅       ");
                $display("                                    ⣦⣿⢸⣿⢧⡟⡠⠗⠋⠟⠞⢻⣿⣿⠙⣿⡇⢹⣿⡇⡎⣋⣿⢀⣠⢻⢾⠀⠣       ");
                $display("                                   ⣼⢽⣿⢸⣿⢈⡞⢠⢾⠍⠑⡐⣌⢿⣿⡷⡽⣇⡷⠻⣆⡡⢿⣿⢸⣿⣿⣿⡆⠀⠀⢀     ");
                $display("                                  ⣰⣿⡾⣿⢸⡿⣟⢠⡏⠨⡄⠀⣇⣿⣮⡻⢇⢿⢖⣴⡒⠢⡀⠘⣿⢸⣿⣿⡿⣼⡷⡄⣼⡄    ");
                $display("                                 ⢰⣿⣿⡇⣿⡸⡇⣗⢸⣇⠔⢀⣸⣿⣿⣿⣿⣿⣿⡎⢛⡅⠀⣷⡀⡹⣼⣿⣟⣼⡿⣱⡇⣿⡇    ");
                $display("    **************************** ⣼⣿⣿⣿⡼⣇⠇⣟⠳⠟⠿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠉⣉⢠⣿⡇⣃⡿⢫⣾⢟⣵⣿⡇⣿⡇    ");
                $display("    **                        ** ⢿⣿⣿⣿⣷⡹⡜⢿⣳⢰⣜⣽⣿⡿⠷⢿⣿⣿⣟⢿⣶⣶⣿⡟⡐⢜⣵⡿⣫⣾⣿⣿⣧⣿⢧⢰⡀  ");
                $display("    **  Waku Waku !!          **⠆⢸⣿⣿⣿⣿⣷⡱⡘⢿⣿⣿⣿⡿⣼⣿⣿⢸⣿⡿⣦⡌⠛⣳⡞⣠⡾⣫⣾⣿⣿⣿⣿⢸⡿⡐⣾⣇  ");
                $display("    **                        ** ⠘⣿⣿⣿⣿⣿⣿⡄⠀⠙⠿⣿⡇⣿⣿⣿⢸⣿⣿⣾⣽⣷⢟⢜⣫⣾⣿⣿⣿⣿⣿⡟⢼⢣⢳⣸⣿  ");
                $display("    **  Simulation PASS !!    **   ⠹⣿⣿⣿⣿⣿⣿⠀⠀⡿⢺⣽⠒⠾⢭⣼⣿⣿⣿⠿⠫⣱⣿⣿⣿⣿⣿⣿⣿⣿⢇⢏⠏⠈⢹⡿ ");
                $display("    **                        **     ⠹⣿⣿⣿⣿⡿⣠⠶⣿⣷⡜⡏⣿⣶⠶⣶⢾⢿⢇⣼⣿⣿⣿⣿⣿⣿⣿⣿⠏⠊⠀⠀⠀⣾⠇");
                $display("    ****************************      ⠈⠻⣿⡿⣼⡿⣿⣶⣯⠃⡎⠩⠰⣛⠿⣷⡍⣼⣿⣿⣿⣿⣿⣿⣿⡿⠃⠀⠀⠀⠀⢀⠋ ");
                $display("                                      ⠈⠃⠿⠿⠾⠝⠿⠰⠑⠀⠿⠿⠿⠶⠿⠼⠿⠿⠿⠿⠿⠟⠉⠀⠀⠀        ");
            end else begin
                $display("                                     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣤⠶⠟⠛⠉⠁⠉⠛⠃⠀⠈⣿⠻⠷⠶⣦⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀");
                $display("                                     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡄⠀⠀⠀⠀⠀⠈⠙⢿⣦⣄⣀⣤⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀");
                $display("                                     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠾⠋⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣇⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⡉⢹⣿⣿⣿⣷⣶⣶⣤⠀⠀⠀⠀⠀⠀⠀⠀");
                $display("                                     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡾⠋⠀⣼⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡄⠀⠀⠀⠀⠀⠀⠀⠘⣿⣧⠀⢩⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀");
                $display("                                     ⠀⠀⠀⠀⠀⠀⠀⠀⣴⠏⠀⠀⢸⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣧⠀⠀⠀⠀⠀⠀⢀⠀⠘⣿⣷⡀⢉⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀");
                $display("                                     ⠀⠀⠀⠀⠀⠀⣠⣾⠃⠀⠀⠀⣿⠃⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⣿⠀⠀⠀⢹⣇⠀⠀⠀⠀⠀⠘⣇⠀⠘⢿⣷⡉⠉⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀");
                $display("                                     ⠀⠀⣀⣠⣴⣾⡿⠁⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⢰⡇⠀⠀⠸⣇⠀⠀⠀⢻⡄⠀⠀⠀⠀⠀⢻⡀⠀⠈⠻⣿⣮⡉⢹⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀");
                $display("                                     ⢰⣿⣿⣿⣿⣿⠁⠀⢀⠀⠁⠀⢻⡆⠀⠀⠀⠀⠀⠀⢸⣧⠀⠀⠀⢻⡄⠀⠀⠀⢿⡀⠀⠀⠀⠀⠸⡇⠀⠀⠀⠘⡿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀");
                $display("                                     ⠘⣿⣿⣿⣿⠇⠀⠀⣾⠀⠀⠀⢸⣧⠀⠀⠀⠀⠀⠀⠈⣿⣦⠀⠀⠈⢿⣄⠀⠀⠈⢷⡀⠀⠀⠀⠀⣷⠀⠀⠀⠀⢷⡀⠙⢿⣷⡀⠀⠀⠀⠀⠀⠀⠀");
                $display("                                     ⠀⢻⣿⣿⡏⠀⢠⡀⢻⠀⠀⠀⢸⣿⣦⡀⠀⠀⠀⠀⠀⢿⡉⢷⡄⠀⠘⢿⣦⡀⠀⠈⢷⡀⠀⠀⠀⢻⠀⠀⠀⠀⠈⣧⠀⠈⢻⣷⡀⠀⠀⠀⠀⠀⠀");
                $display("                                     ⠀⠘⣿⡿⠀⠀⣸⠀⣸⡇⠀⠀⢸⡇⠈⢷⣄⡀⠀⠀⠀⢺⣇⠀⠙⢦⣄⠈⢷⡹⢦⡀⠈⣷⠀⠀⠀⢸⡇⠀⠀⠀⠀⠸⣇⠀⠀⠹⣷⡀⠀⠀⠀⠀⠀");
                $display("                                     ⠀⠀⣸⡇⠀⠀⡯⢠⣿⢿⡄⠀⢸⡇⠀⠀⠈⠛⠶⣦⣄⣀⣹⣿⡓⠳⠎⠛⠲⠿⢦⣽⣶⣼⣇⠀⠀⢸⡇⠀⠀⠀⠀⠀⢻⡄⠀⠀⢻⣧⠀⠀⠀⠀⠀");
                $display("                                     ⠀⢠⣿⠀⠀⠀⡇⣼⠏⠀⠻⣆⢘⣧⣴⠖⠋⠀⠀⠀⠀⠉⠁⠉⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡁⠀⢸⡇⠀⠀⠀⠀⠀⠘⣷⠀⠀⠈⣿⣇⠀⠀⠀⠀");
                $display("                                     ⠀⣼⡟⠀⠀⠀⣿⡟⠀⠀⠀⠙⠳⠥⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⣤⣤⣼⡇⠀⢸⡇⠀⠀⠀⠀⠀⠀⢹⡇⠀⠀⡟⢿⣆⠀⠀⠀");
                $display("                                     ⢀⣿⡇⠀⠀⠀⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⡤⢶⣾⣿⣿⣏⡹⠿⣇⠀⢸⡇⠀⠀⠀⠀⠀⠀⠘⣧⠀⠀⣧⠸⣿⡀⠀⠀");
                $display("                                     ⢸⣿⢣⠀⠀⠀⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣶⣯⠵⠶⠛⠉⠁⠀⠀⠀⠀⢿⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⢻⠀⠀⣿⠀⣿⣧⠀⠀");
                $display("                                     ⣸⡏⢹⠀⠀⠀⢿⡇⠀⠀⠀⣠⣤⣶⣾⣿⣻⣿⡿⠖⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⢀⠀⣀⠀⢸⡀⢸⠀⠀⠀⠀⠀⠀⠀⠀⢸⡆⠀⡿⢰⡏⣿⡀⠀");
                $display("                                     ⣿⡇⢸⡄⠀⠀⢸⣿⢀⣴⣟⣡⡽⠟⠛⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡆⠸⣗⠻⠗⠻⠇⢸⡇⣸⠁⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⡇⢸⠇⢸⣧⠀");
                $display("                                     ⣿⡅⠘⣇⠀⠀⠀⣿⡘⠛⠉⠁⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠀⠀⠀⠀⠀⠀⢈⡇⣿⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⢠⣃⡿⠀⠀⣿⠀");
                $display("    ****************************     ⣿⢷⡀⢹⡄⠀⠀⢹⡇⠀⠀⣸⡆⠶⠄⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⡶⠃⠀⠀⠀⠀⠀⢸⣧⡇⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠘⣼⠃⠀⠀⢻⡄");
                $display("    **                        **     ⣿⠈⣧⠈⢷⠀⠀⠈⣿⠀⠀⠈⠀⠀⠀⠀⢀⠀⠀⢀⣀⣤⠴⠖⢚⣩⠽⠋⠀⠀⠀⠀⠀⠀⠀⠀⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⣸⠀⣰⠏⠀⠀⠀⢼⡇");
                $display("    **  OOPS !!               **     ⣿⠀⠘⣇⠘⣧⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠉⠛⠛⠷⠖⠒⠒⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⢁⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⡿⢰⠟⠀⠀⠀⠀⣿⡄");
                $display("    **                        **     ⣿⡄⠀⠘⣦⠘⣇⠀⠈⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⠾⠋⢀⣽⡇⠀⠀⠀⠀⠀⠀⠀⠀⢨⡷⠋⠀⠀⠀⠀⠀⣿⠀");
                $display("    **  Simulation Failed !!  **     ⢸⣧⠀⠀⠘⢧⡘⢧⡀⠘⠻⠶⢤⣤⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⣀⣀⣠⣴⣾⠟⠋⢀⣠⠶⢻⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠃⠀⠀⠀⠀⠀⣰⡏⠀");
                $display("    **                        **      ⢿⡆⠀⠀⡈⢳⣄⠱⣄⠀⠀⠀⠀⠀⣽⠉⠉⢉⣉⠙⢿⣉⠉⠻⣿⡿⠋⢀⣠⠖⠋⠁⠀⣾⠁⠀⠀⠀⠀⠀⠀⠀⠀⢰⡟⠀⠀⠀⠀⠀⣠⡟⠀⠀");
                $display("    ****************************      ⠈⢿⡄⠐⣧⠀⠙⢦⡈⠀⠀⠀⠀⠀⢻⣆⠀⠀⠙⢦⣀⠉⠳⢤⣘⣧⠶⠋⠁⠀⠀⠀⣰⡿⠀⠀⠀⠀⠀⠀⠀⢀⣠⠿⠃⠀⠀⠀⢀⣴⠟⠁⠀⠀");
                $display("                                       ⠈⢿⣄⢿⣧⡀⠀⠛⢦⣄⠀⠀⠀⢸⣿⣷⣄⡀⠀⠉⠳⠶⣶⠞⠁⠀⠀⠀⢀⣠⣾⣿⠀⠀⠀⠀⠀⠀⣠⣴⡏⠁⠀⠀⢀⣠⡴⠟⠁⠀⠀⠀⠀");
                $display("                                         ⠻⣾⣿⣛⣦⣄⠀⠈⠛⠲⠦⣄⣿⡇⠈⠙⠛⠶⠶⢶⣿⠀⠀⠀⢀⣴⣿⣿⣿⣯⣀⣀⣤⣤⣶⣿⣿⣿⣿⡛⠛⠋⠉⠉⠀⠀⠀⠀⠀  ");
                $display("                                      ⠀⠀⠀⠀⠀⠘⣻⣷⣄⣙⡛⠶⠦⣤⣤⣄⣸⣷⡄⠀⠀⠀⢠⠏⣻⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠛⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀");
                $display("         Totally has %d errors"                     , err);
                $display("\n");
            end
        end
    endtask

    initial begin
        #(`CYCLE*`MAX)
        $display("****************************");
        $display("**                        **");
        $display("**  Time Out !!           **");
        $display("**                        **");
        $display("**  Simulation Failed !!  **");
        $display("**                        **");
        $display("****************************");
        $display("       Totally has %d errors"                     , err);
        $display("\n");
        $finish;
    end

    // Add "+define+FSDB" at command line
    initial begin
        $fsdbDumpfile("top.fsdb");
        $fsdbDumpvars("+struct", "+mda",top);
    end 
endmodule
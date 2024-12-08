// Copyright (c) 2020 Sonal Pinto
// SPDX-License-Identifier: Apache-2.0
`define CYCLE 10      // Cycle time
`define MAX 300000    // Max cycle number

`define mem_word(addr) \
  {CPU.dm.mem[addr+3], \
  CPU.dm.mem[addr+2], \
  CPU.dm.mem[addr+1], \
  CPU.dm.mem[addr]}

`define ANSWER_START 'h9000

module top_tb;
  logic clk;
  logic rst;
  logic waiting;

  logic [31:0] GOLDEN [100];
  integer gf;               // pointer of golden file
  integer num;              // total golden data
  integer err;              // total number of errors compared to golden data

  integer i, handler;
  integer read=0, read_hit=0, write=0, write_hit=0;
  string prog, prog_path, gold_path;

  CPU CPU (
    .clk(clk),
    .rst(rst)
  );

  always @(posedge CPU.Dcache.rd)
  begin
    read++;
    if(CPU.Dcache.hit_miss)
    begin
      read_hit++;
    end
  end

  always @(posedge CPU.Dcache.wr)
  begin
    write++;
    if(CPU.Dcache.hit_miss)
    begin
      write_hit++;
    end
  end

  always #(`CYCLE/2) clk = ~clk;

  initial begin
    clk = 1; rst = 1;
    // waiting = 0;

    // Get Path (main.hex / golden.hex)
    prog_path = "./test/prog1/main.hex";
    gold_path = "./test/prog1/golden.hex";

    // Load main.hex (Program & Preset data)
    handler = $fopen(prog_path, "r");
    if (handler == 0) begin
      $display("\n\n\nError !!! No found \"%s\"\n\n\n", prog_path);
      $finish;
    end

    $readmemh(prog_path, CPU.im.mem);
    $readmemh(prog_path, CPU.dm.mem);

    // Load Golden Data
    gf = $fopen(gold_path, "r");
    if (handler == 0) begin
      $display("\n\n\nError !!! No found \"%s\"\n\n\n", gold_path);
      $finish;
    end

    num = 0;
    while (!$feof(gf)) begin
      $fscanf(gf, "%h\n", GOLDEN[num]);
      num++;
    end
    $fclose(gf);

    // Begin Running !
    #(`CYCLE) rst = 0;
    

    // Wait until end of execution
    wait(CPU.t1.pc == 32'h0000001c);
    $display("\nDone\n");

    // Compare result with Golden Data
    err = 0;

    for (i = 0; i < num; i++)
    begin
      // $display("dm1['h%4h] = %h dirty1 = %d, dm2['h%4h] = %h dirty1 = %d, M['h%4h] = %h, expect = %h", i,CPU.Dcache.mem1[i],CPU.Dcache.dirty1[i] ,i,CPU.Dcache.mem2[i],CPU.Dcache.dirty2[i], `ANSWER_START + i*4, `mem_word(`ANSWER_START + i*4), GOLDEN[i]);
      if (!((`mem_word(`ANSWER_START + i*4) === GOLDEN[i]) || (CPU.Dcache.mem1[i] === GOLDEN[i]) || CPU.Dcache.mem2[i] === GOLDEN[i]))
      begin
        $display("dm1['h%4h] = %h dirty1 = %d, dm2['h%4h] = %h dirty1 = %d, M['h%4h] = %h, expect = %h", i,CPU.Dcache.mem1[i],CPU.Dcache.dirty1[i] ,i,CPU.Dcache.mem2[i],CPU.Dcache.dirty2[i], `ANSWER_START + i*4, `mem_word(`ANSWER_START + i*4), GOLDEN[i]);
        err = err + 1;
      end
      else 
      begin
        $display("dm1['h%4h] = %h dirty1 = %d, dm2['h%4h] = %h dirty1 = %d, M['h%4h] = %h, pass", i,CPU.Dcache.mem1[i],CPU.Dcache.dirty1[i] ,i,CPU.Dcache.mem2[i],CPU.Dcache.dirty2[i], `ANSWER_START + i*4, `mem_word(`ANSWER_START + i*4));
      end
    end

    // Print result
    result(err, num);
    $finish;
  end

  task result;
    input integer err;
    input integer num;
    begin
      if (err === 0)
      begin
        $display("****************************");
        $display("**                        **");
        $display("**  Waku Waku !!          **");
        $display("**                        **");
        $display("**  Simulation PASS !!    **");
        $display("**                        **");
        $display("****************************");
        $display("read           : %d",read);
        $display("read hit       : %d",read_hit);
        $display("write          : %d",write);
        $display("write hit      : %d",write_hit);
      end
      else
      begin
        $display("****************************");
        $display("**                        **");
        $display("**  OOPS !!               **");
        $display("**                        **");
        $display("**  Simulation Failed !!  **");
        $display("**                        **");
        $display("****************************");
        $display("       Totally has %d errors",err);
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
    $display("       Totally has %d errors", err);
    $display("\n");
    $finish;
  end
endmodule

// Copyright (c) 2020 Sonal Pinto
// SPDX-License-Identifier: Apache-2.0

`timescale 1ns/10ps

`define CYCLE 10.0      // Cycle time
`define MAX 400000    // Max cycle number

`define mem_word(addr) \
  {top.dm.mem[addr+3], \
  top.dm.mem[addr+2], \
  top.dm.mem[addr+1], \
  top.dm.mem[addr]}

`define ANSWER_START 'h9000


`include "./Top.v"


module top_tb;

  logic clk;
  logic rst;

  logic [31:0] GOLDEN [100];
  integer gf;               // pointer of golden file
  integer num;              // total golden data
  integer err;              // total number of errors compared to golden data

  integer i, handler;
  string prog, prog_path, gold_path;

  Top top (
    .clk(clk),
    .rst(rst)
  );

  always #(`CYCLE/2) clk = ~clk;

  initial begin

    clk = 0; rst = 1;

    // Get Path (main.hex / golden.hex)
    if($value$plusargs("PROG=%s", prog)) begin
      prog_path = $sformatf("./test/%s/main.hex", prog);
      gold_path = $sformatf("./test/%s/golden.hex", prog);
    end
    else begin
      prog_path = "./test/prog0/main.hex";
      gold_path = "./test/prog0/golden.hex";
    end


    // Load main.hex (Program & Preset data)
    handler = $fopen(prog_path, "r");
    if (handler == 0) begin
      $display("\n\n\nError !!! No found \"%s\"\n\n\n", prog_path);
      $finish;
    end

    $readmemh(prog_path, top.im.mem);
    $readmemh(prog_path, top.dm.mem);

    // Load Golden Data
    gf = $fopen(gold_path, "r");
    if (handler == 0) begin
      $display("\n\n\nError !!! No found \"%s\"\n\n\n", gold_path);
      $finish;
    end

    num = 0;
    while (!$feof(gf)) begin
      void'($fscanf(gf, "%h\n", GOLDEN[num]));
      num++;
    end
    $fclose(gf);


    // Initialize part of the memory (needed by the test program)
    `mem_word('h9078) = 32'd0;
    `mem_word('h907c) = 32'd0;
    `mem_word('h9080) = 32'd0;
    `mem_word('h9084) = 32'd0;


    // Begin Running !
    #(`CYCLE) rst = 0;
    

    // Wait until end of execution
    wait(top.current_pc == 64'h0000001c);
    $display("\nDone\n");


    // Compare result with Golden Data
    err = 0;
    //for write back cache//
    for (i = 0; i < num; i++)
    begin
      // $display("dm1['h%4h] = %h dirty1 = %d, dm2['h%4h] = %h dirty1 = %d, M['h%4h] = %h, expect = %h", i,CPU.Dcache.mem1[i],CPU.Dcache.dirty1[i] ,i,CPU.Dcache.mem2[i],CPU.Dcache.dirty2[i], `ANSWER_START + i*4, `mem_word(`ANSWER_START + i*4), GOLDEN[i]);
      if (!((`mem_word(`ANSWER_START + i*4) === GOLDEN[i]) || (top.Dcache.mem1[i%32] === GOLDEN[i]) || top.Dcache.mem2[i%32] === GOLDEN[i]))
      begin
        $display("d$m1['h%4h] = %h dirty1 = %d, d$m2['h%4h] = %h dirty2 = %d, M['h%4h] = %h, expect = %h", i,top.Dcache.mem1[i%32],top.Dcache.dirty1[i%32] ,i,top.Dcache.mem2[i%32],top.Dcache.dirty2[i%32], `ANSWER_START + i*4, `mem_word(`ANSWER_START + i*4), GOLDEN[i]);
        err = err + 1;
      end
      else 
      begin
        $display("d$m1['h%4h] = %h dirty1 = %d, d$m2['h%4h] = %h dirty2 = %d, M['h%4h] = %h, pass", i%32,top.Dcache.mem1[i%32],top.Dcache.dirty1[i%32] ,i%32,top.Dcache.mem2[i%32],top.Dcache.dirty2[i%32], `ANSWER_START + i*4, `mem_word(`ANSWER_START + i*4));
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
        $display("       Totally has %d errors" , err);
        $display("\n");
      end
    end
  endtask

  initial begin
      $fsdbDumpfile("top.fsdb");
      $fsdbDumpvars("+struct", "+mda",top);
  end

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

endmodule
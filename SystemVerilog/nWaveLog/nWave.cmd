verdiSetActWin -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/summer/Desktop/piyan-cpu/SystemVerilog/top.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/pc"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/top/pc/clk} \
{/top_tb/top/pc/current_pc\[63:0\]} \
{/top_tb/top/pc/next_pc\[63:0\]} \
{/top_tb/top/pc/rst} \
{/top_tb/top/pc/stall} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/top/pc/clk} \
{/top_tb/top/pc/current_pc\[63:0\]} \
{/top_tb/top/pc/next_pc\[63:0\]} \
{/top_tb/top/pc/rst} \
{/top_tb/top/pc/stall} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvSetCursor -win $_nWave1 1946773.259621 -snap {("G2" 0)}
wvZoom -win $_nWave1 0.000000 142604.922458
wvZoom -win $_nWave1 0.000000 6880.421302
wvSetCursor -win $_nWave1 984.046470 -snap {("G2" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetCursor -win $_nWave1 928.718556 -snap {("G2" 0)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 25466.648403 -snap {("G1" 3)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/pc"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/branchcomp"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/controller"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/branchcomp"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/branchcomp/control"
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/top/pc/clk} \
{/top_tb/top/pc/current_pc\[63:0\]} \
{/top_tb/top/pc/next_pc\[63:0\]} \
{/top_tb/top/pc/rst} \
{/top_tb/top/pc/stall} \
{/top_tb/top/branchcomp/control/BrEq} \
{/top_tb/top/branchcomp/control/BrLt} \
{/top_tb/top/branchcomp/control/BrUn} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/top/pc/clk} \
{/top_tb/top/pc/current_pc\[63:0\]} \
{/top_tb/top/pc/next_pc\[63:0\]} \
{/top_tb/top/pc/rst} \
{/top_tb/top/pc/stall} \
{/top_tb/top/branchcomp/control/BrEq} \
{/top_tb/top/branchcomp/control/BrLt} \
{/top_tb/top/branchcomp/control/BrUn} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 15412.776035 -snap {("G1" 2)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/branchcomp"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/pc"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/branchcomp/control"
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 57486.493015 -snap {("G1" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/regfile"
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/top/pc/clk} \
{/top_tb/top/pc/current_pc\[63:0\]} \
{/top_tb/top/pc/next_pc\[63:0\]} \
{/top_tb/top/pc/rst} \
{/top_tb/top/pc/stall} \
{/top_tb/top/branchcomp/control/BrEq} \
{/top_tb/top/branchcomp/control/BrLt} \
{/top_tb/top/branchcomp/control/BrUn} \
{/top_tb/top/regfile/mem\[0:31\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/top/pc/clk} \
{/top_tb/top/pc/current_pc\[63:0\]} \
{/top_tb/top/pc/next_pc\[63:0\]} \
{/top_tb/top/pc/rst} \
{/top_tb/top/pc/stall} \
{/top_tb/top/branchcomp/control/BrEq} \
{/top_tb/top/branchcomp/control/BrLt} \
{/top_tb/top/branchcomp/control/BrUn} \
{/top_tb/top/regfile/mem\[0:31\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 24 )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 11)}

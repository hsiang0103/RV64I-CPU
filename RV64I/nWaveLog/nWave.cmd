verdiSetActWin -win $_nWave1
wvResizeWindow -win $_nWave1 1920 23 1920 1017
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/homes/nfs/caslab_bs/Desktop/Hsiang/systemC/RV64I/top.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/dm"
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/top/dm/clk} \
{/top_tb/top/dm/rdaddress\[31:0\]} \
{/top_tb/top/dm/rden} \
{/top_tb/top/dm/read_data\[63:0\]} \
{/top_tb/top/dm/rst} \
{/top_tb/top/dm/wraddress\[31:0\]} \
{/top_tb/top/dm/wren\[7:0\]} \
{/top_tb/top/dm/write_data\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 29339.740602 -snap {("G2" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/dm"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/Dcache"
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/top/dm/clk} \
{/top_tb/top/dm/rdaddress\[31:0\]} \
{/top_tb/top/dm/rden} \
{/top_tb/top/dm/read_data\[63:0\]} \
{/top_tb/top/dm/rst} \
{/top_tb/top/dm/wraddress\[31:0\]} \
{/top_tb/top/dm/wren\[7:0\]} \
{/top_tb/top/dm/write_data\[63:0\]} \
{/top_tb/top/Dcache/cs\[1:0\]} \
{/top_tb/top/Dcache/hit_miss} \
{/top_tb/top/Dcache/m_wr_address\[31:0\]} \
{/top_tb/top/Dcache/mrden} \
{/top_tb/top/Dcache/mwren\[7:0\]} \
{/top_tb/top/Dcache/ns\[1:0\]} \
{/top_tb/top/Dcache/rd} \
{/top_tb/top/Dcache/wr\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 9 10 11 12 13 14 15 16 )} 
wvSetPosition -win $_nWave1 {("G1" 16)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 63430.657895 -snap {("G2" 0)}
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvResizeWindow -win $_nWave1 1920 23 1920 1017
wvSetCursor -win $_nWave1 28913.289552 -snap {("G1" 7)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 438417.905488 -snap {("G2" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetCursor -win $_nWave1 324811.381098 -snap {("G2" 0)}
wvPrevView -win $_nWave1
wvSetCursor -win $_nWave1 209113.719512 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 201955.792683 -snap {("G2" 0)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 31955.030488 -snap {("G2" 0)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 203955.181665 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 210442.052854 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 209483.401940 -snap {("G1" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetCursor -win $_nWave1 207406.324958 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 206895.044470 -snap {("G1" 13)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 11 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetCursor -win $_nWave1 202562.938262 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 193807.259909 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectAll -win $_nWave1
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/decoder"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/dm"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/controller"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/dm"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/imm_ext"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/dm"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/Dcache"
wvSetPosition -win $_nWave1 {("G1" 29)}
wvSetPosition -win $_nWave1 {("G1" 29)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/top/Dcache/address\[15:0\]} \
{/top_tb/top/Dcache/clk} \
{/top_tb/top/Dcache/counter\[7:0\]} \
{/top_tb/top/Dcache/cs\[1:0\]} \
{/top_tb/top/Dcache/data2cpu\[63:0\]} \
{/top_tb/top/Dcache/data2mem\[63:0\]} \
{/top_tb/top/Dcache/data_in_cpu\[63:0\]} \
{/top_tb/top/Dcache/data_in_mem\[63:0\]} \
{/top_tb/top/Dcache/data_ready} \
{/top_tb/top/Dcache/dirty1\[0:31\]} \
{/top_tb/top/Dcache/dirty2\[0:31\]} \
{/top_tb/top/Dcache/hit_miss} \
{/top_tb/top/Dcache/i\[31:0\]} \
{/top_tb/top/Dcache/lru1\[0:31\]} \
{/top_tb/top/Dcache/lru2\[0:31\]} \
{/top_tb/top/Dcache/m_rd_address\[15:0\]} \
{/top_tb/top/Dcache/m_wr_address\[15:0\]} \
{/top_tb/top/Dcache/mask\[63:0\]} \
{/top_tb/top/Dcache/mem1\[0:31\]} \
{/top_tb/top/Dcache/mem2\[0:31\]} \
{/top_tb/top/Dcache/mrden} \
{/top_tb/top/Dcache/mwren\[7:0\]} \
{/top_tb/top/Dcache/ns\[1:0\]} \
{/top_tb/top/Dcache/rd} \
{/top_tb/top/Dcache/rst} \
{/top_tb/top/Dcache/smode1\[0:31\]} \
{/top_tb/top/Dcache/smode2\[0:31\]} \
{/top_tb/top/Dcache/store_mode\[1:0\]} \
{/top_tb/top/Dcache/wr\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 29 )} 
wvSetPosition -win $_nWave1 {("G1" 29)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 196747.122713 -snap {("G1" 23)}
wvSetCursor -win $_nWave1 208091.158537 -snap {("G1" 29)}
wvSetCursor -win $_nWave1 207675.743140 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 203617.454268 -snap {("G2" 0)}
wvSelectGroup -win $_nWave1 {G2}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 6388574.862805 -snap {("G2" 0)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSetPosition -win $_nWave1 {("G1" 26)}
wvSetPosition -win $_nWave1 {("G1" 27)}
wvSetPosition -win $_nWave1 {("G1" 28)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 34)}
wvSetCursor -win $_nWave1 482679.092035 -snap {("G2" 28)}
wvSetCursor -win $_nWave1 70834.413110 -snap {("G2" 32)}
wvSetCursor -win $_nWave1 36613.733803 -snap {("G2" 27)}
wvSelectSignal -win $_nWave1 {( "G2" 28 )} 
wvSelectSignal -win $_nWave1 {( "G2" 30 )} 
wvSetCursor -win $_nWave1 17708.603277 -snap {("G2" 28)}
wvSelectSignal -win $_nWave1 {( "G2" 25 26 27 28 29 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoom -win $_nWave1 3217947.690887 4305206.970246
wvScrollDown -win $_nWave1 0
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetCursor -win $_nWave1 9364.352025 -snap {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 17982.870703 -snap {("G1" 8)}
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSetPosition -win $_nWave1 {("G1" 27)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 21)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetCursor -win $_nWave1 15413.889174 -snap {("G1" 22)}
wvSetCursor -win $_nWave1 9530.092769 -snap {("G1" 22)}
wvSetCursor -win $_nWave1 15496.759546 -snap {("G1" 22)}
wvSetCursor -win $_nWave1 17734.259587 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 20386.111488 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 25772.685662 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 29501.852397 -snap {("G1" 8)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 17568.518843 -snap {("G2" 28)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 15496.759546 -snap {("G1" 10)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 22043.518926 -snap {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 21380.555951 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 20386.111488 -snap {("G1" 8)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetCursor -win $_nWave1 15496.759546 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 18314.352190 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 20551.852232 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 23203.704133 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 26850.000496 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 29584.722769 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 30247.685744 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 29999.074629 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 27181.481984 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 25026.852315 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 23783.796736 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 20468.981860 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 19640.278141 -snap {("G1" 8)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectGroup -win $_nWave1 {G1}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/reg_M"
wvSetPosition -win $_nWave1 {("G1" 29)}
wvSetPosition -win $_nWave1 {("G1" 29)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/top/Dcache/address\[15:0\]} \
{/top_tb/top/Dcache/clk} \
{/top_tb/top/Dcache/counter\[7:0\]} \
{/top_tb/top/Dcache/data2cpu\[63:0\]} \
{/top_tb/top/Dcache/data2mem\[63:0\]} \
{/top_tb/top/Dcache/data_in_cpu\[63:0\]} \
{/top_tb/top/Dcache/data_in_mem\[63:0\]} \
{/top_tb/top/Dcache/data_ready} \
{/top_tb/top/Dcache/cs\[1:0\]} \
{/top_tb/top/Dcache/ns\[1:0\]} \
{/top_tb/top/Dcache/dirty1\[0:31\]} \
{/top_tb/top/Dcache/dirty2\[0:31\]} \
{/top_tb/top/Dcache/hit_miss} \
{/top_tb/top/Dcache/i\[31:0\]} \
{/top_tb/top/Dcache/lru1\[0:31\]} \
{/top_tb/top/Dcache/lru2\[0:31\]} \
{/top_tb/top/Dcache/m_rd_address\[15:0\]} \
{/top_tb/top/Dcache/m_wr_address\[15:0\]} \
{/top_tb/top/Dcache/mask\[63:0\]} \
{/top_tb/top/Dcache/mrden} \
{/top_tb/top/Dcache/mwren\[7:0\]} \
{/top_tb/top/Dcache/wr\[7:0\]} \
{/top_tb/top/reg_M/alu_out_E\[63:0\]} \
{/top_tb/top/reg_M/alu_out_M\[63:0\]} \
{/top_tb/top/reg_M/clk} \
{/top_tb/top/reg_M/rs2_data_E\[63:0\]} \
{/top_tb/top/reg_M/rs2_data_M\[63:0\]} \
{/top_tb/top/reg_M/rst} \
{/top_tb/top/reg_M/waiting} \
{/top_tb/top/Dcache/rd} \
{/top_tb/top/Dcache/rst} \
{/top_tb/top/Dcache/smode1\[0:31\]} \
{/top_tb/top/Dcache/smode2\[0:31\]} \
{/top_tb/top/Dcache/store_mode\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/top/Dcache/mem1\[0:31\]} \
{/top_tb/top/Dcache/mem1\[0\]\[63:0\]} \
{/top_tb/top/Dcache/mem1\[1\]\[63:0\]} \
{/top_tb/top/Dcache/mem1\[2\]\[63:0\]} \
{/top_tb/top/Dcache/mem1\[3\]\[63:0\]} \
{/top_tb/top/Dcache/mem1\[4\]\[63:0\]} \
{/top_tb/top/Dcache/mem1\[5\]\[63:0\]} \
{/top_tb/top/Dcache/mem1\[6\]\[63:0\]} \
{/top_tb/top/Dcache/mem1\[7\]\[63:0\]} \
{/top_tb/top/Dcache/mem1\[8\]\[63:0\]} \
{/top_tb/top/Dcache/mem1\[9\]\[63:0\]} \
{/top_tb/top/Dcache/mem1\[10\]\[63:0\]} \
{/top_tb/top/Dcache/mem1\[11\]\[63:0\]} \
{/top_tb/top/Dcache/mem1\[12\]\[63:0\]} \
{/top_tb/top/Dcache/mem1\[13\]\[63:0\]} \
{/top_tb/top/Dcache/mem1\[14\]\[63:0\]} \
{/top_tb/top/Dcache/mem1\[15\]\[63:0\]} \
{/top_tb/top/Dcache/mem1\[16\]\[63:0\]} \
{/top_tb/top/Dcache/mem1\[17\]\[63:0\]} \
{/top_tb/top/Dcache/mem1\[18\]\[63:0\]} \
{/top_tb/top/Dcache/mem1\[19\]\[63:0\]} \
{/top_tb/top/Dcache/mem1\[20\]\[63:0\]} \
{/top_tb/top/Dcache/mem1\[21\]\[63:0\]} \
{/top_tb/top/Dcache/mem1\[22\]\[63:0\]} \
{/top_tb/top/Dcache/mem1\[23\]\[63:0\]} \
{/top_tb/top/Dcache/mem1\[24\]\[63:0\]} \
{/top_tb/top/Dcache/mem1\[25\]\[63:0\]} \
{/top_tb/top/Dcache/mem1\[26\]\[63:0\]} \
{/top_tb/top/Dcache/mem1\[27\]\[63:0\]} \
{/top_tb/top/Dcache/mem1\[28\]\[63:0\]} \
{/top_tb/top/Dcache/mem1\[29\]\[63:0\]} \
{/top_tb/top/Dcache/mem1\[30\]\[63:0\]} \
{/top_tb/top/Dcache/mem1\[31\]\[63:0\]} \
{/top_tb/top/Dcache/mem2\[0:31\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 23 24 25 26 27 28 29 )} 
wvSetPosition -win $_nWave1 {("G1" 29)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 6
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvScrollUp -win $_nWave1 6
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 4
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 5553264.832317 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 4826235.731707 -snap {("G1" 21)}
wvSelectGroup -win $_nWave1 {G3}
wvSetCursor -win $_nWave1 4687017.393293 -snap {("G1" 21)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectGroup -win $_nWave1 {G3}
wvGetSignalOpen -win $_nWave1
wvGetSignalScopeHistory -win $_nWave1 -backward
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/Dcache"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/im"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/dm"
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/top/Dcache/address\[15:0\]} \
{/top_tb/top/Dcache/clk} \
{/top_tb/top/Dcache/counter\[7:0\]} \
{/top_tb/top/Dcache/data2cpu\[63:0\]} \
{/top_tb/top/Dcache/data2mem\[63:0\]} \
{/top_tb/top/Dcache/data_in_cpu\[63:0\]} \
{/top_tb/top/Dcache/data_in_mem\[63:0\]} \
{/top_tb/top/Dcache/data_ready} \
{/top_tb/top/Dcache/cs\[1:0\]} \
{/top_tb/top/Dcache/ns\[1:0\]} \
{/top_tb/top/Dcache/dirty1\[0:31\]} \
{/top_tb/top/Dcache/dirty2\[0:31\]} \
{/top_tb/top/Dcache/hit_miss} \
{/top_tb/top/Dcache/i\[31:0\]} \
{/top_tb/top/Dcache/lru1\[0:31\]} \
{/top_tb/top/Dcache/lru2\[0:31\]} \
{/top_tb/top/Dcache/m_rd_address\[15:0\]} \
{/top_tb/top/Dcache/m_wr_address\[15:0\]} \
{/top_tb/top/Dcache/mask\[63:0\]} \
{/top_tb/top/Dcache/mrden} \
{/top_tb/top/Dcache/mwren\[7:0\]} \
{/top_tb/top/Dcache/wr\[7:0\]} \
{/top_tb/top/reg_M/alu_out_E\[63:0\]} \
{/top_tb/top/reg_M/alu_out_M\[63:0\]} \
{/top_tb/top/reg_M/clk} \
{/top_tb/top/reg_M/rs2_data_E\[63:0\]} \
{/top_tb/top/reg_M/rs2_data_M\[63:0\]} \
{/top_tb/top/reg_M/rst} \
{/top_tb/top/reg_M/waiting} \
{/top_tb/top/Dcache/rd} \
{/top_tb/top/Dcache/rst} \
{/top_tb/top/Dcache/smode1\[0:31\]} \
{/top_tb/top/Dcache/smode2\[0:31\]} \
{/top_tb/top/Dcache/store_mode\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/top/Dcache/mem1\[0:31\]} \
{/top_tb/top/dm/mem\[0:65535\]} \
{/top_tb/top/Dcache/mem2\[0:31\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G3" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSelectGroup -win $_nWave1 {G4}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 65519 )} 
wvScrollUp -win $_nWave1 12
wvScrollUp -win $_nWave1 8
wvScrollUp -win $_nWave1 33
wvScrollUp -win $_nWave1 65479
wvScrollDown -win $_nWave1 13
wvSetCursor -win $_nWave1 9864312.695613 -snap {("G3" 5)}
wvSetCursor -win $_nWave1 203409.632241 -snap {("G3" 4)}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 65536)}
wvSelectGroup -win $_nWave1 {G3}

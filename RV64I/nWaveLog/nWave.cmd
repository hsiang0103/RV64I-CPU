verdiSetActWin -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/summer/Desktop/piyan-cpu/RV64I/top.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/reg_file"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/top/reg_file/registers\[0:31\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/top/reg_file/registers\[0:31\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvExpandBus -win $_nWave1
wvSetCursor -win $_nWave1 5250.098204 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 2109.852549 -snap {("G1" 15)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetCursor -win $_nWave1 36554.422074 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 37535.748841 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 38418.942932 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 39547.468714 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 41461.055910 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 42491.449015 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 45778.893685 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 51028.991889 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 55739.360371 -snap {("G1" 7)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomAll -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/top"
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomAll -win $_nWave1
wvSetCursor -win $_nWave1 7850.614137 -snap {("G1" 3)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 5768.938297 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 6436.920626 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 5222.407300 -snap {("G1" 4)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 16442.928737 -snap {("G1" 5)}
wvZoomAll -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomAll -win $_nWave1
wvSetCursor -win $_nWave1 46339.162804 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 61402.265353 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 46454.148320 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 48370.573581 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 49290.457706 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 50555.298378 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 52586.709154 -snap {("G1" 9)}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetCursor -win $_nWave1 49443.771727 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 50401.984357 -snap {("G1" 9)}
wvResizeWindow -win $_nWave1 -1 27 1917 917
wvResizeWindow -win $_nWave1 -1 27 1917 917
wvResizeWindow -win $_nWave1 -1 27 1917 917
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetCursor -win $_nWave1 52446.905175 -snap {("G1" 9)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSelectGroup -win $_nWave1 {G2}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/dm"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/top/reg_file/registers\[0:31\]} \
{/top_tb/top/dm/mem\[0:65535\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/top/reg_file/registers\[0:31\]} \
{/top_tb/top/dm/mem\[0:65535\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvExpandBus -win $_nWave1
wvResizeWindow -win $_nWave1 -1 27 1917 917
wvSelectSignal -win $_nWave1 {( "G1" 65512 )} 
wvScrollUp -win $_nWave1 56620
wvSelectSignal -win $_nWave1 {( "G1" 8895 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8897 )} 
wvScrollDown -win $_nWave1 46
wvScrollDown -win $_nWave1 53
wvSelectSignal -win $_nWave1 {( "G1" 9003 )} 
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvScrollUp -win $_nWave1 8979
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
wvScrollDown -win $_nWave1 38
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
wvScrollDown -win $_nWave1 924
wvScrollDown -win $_nWave1 1467
wvScrollUp -win $_nWave1 407
wvScrollUp -win $_nWave1 570
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 811
wvScrollDown -win $_nWave1 6
wvScrollDown -win $_nWave1 40
wvScrollDown -win $_nWave1 41
wvScrollDown -win $_nWave1 56
wvScrollDown -win $_nWave1 35703
wvScrollDown -win $_nWave1 245
wvScrollUp -win $_nWave1 47
wvSelectSignal -win $_nWave1 {( "G1" 36867 )} 
wvScrollUp -win $_nWave1 36777
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 77
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/dm"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top"
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/top/reg_file/registers\[0:31\]} \
{/top_tb/top/dm/mem\[0:65535\]} \
{/top_tb/top/current_pc\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/top/reg_file/registers\[0:31\]} \
{/top_tb/top/dm/mem\[0:65535\]} \
{/top_tb/top/current_pc\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvExpandBus -win $_nWave1
wvScrollUp -win $_nWave1 29
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetCursor -win $_nWave1 65499.134171 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 35)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomAll -win $_nWave1
wvZoom -win $_nWave1 20026.437541 100132.187707
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvZoom -win $_nWave1 55909.895687 78782.125741
wvSetCursor -win $_nWave1 68457.120370 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 57482.078057 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 60429.920000 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 62470.733654 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 67429.154974 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 70422.348332 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 71404.962313 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 70588.636852 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 71631.719386 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 70513.051161 -snap {("G1" 35)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
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
wvZoomAll -win $_nWave1
wvZoom -win $_nWave1 0.000000 160211.500330
wvZoom -win $_nWave1 0.000000 72852.288319
wvSetCursor -win $_nWave1 1492.677421 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 2648.298650 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 3322.411034 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 4526.183147 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 5826.257030 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 7270.783567 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 9582.026025 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 12326.626444 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 17623.223744 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 30286.906380 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 43432.097861 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 51521.446465 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 54843.857499 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 52725.218579 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 54314.197769 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 57347.703495 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 56914.345534 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 58214.419417 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 58647.777378 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 58407.022955 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 60477.510991 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 61296.076028 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 62547.999026 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 63523.054439 -snap {("G1" 35)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetCursor -win $_nWave1 68386.293778 -snap {("G1" 8)}
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSetPosition -win $_nWave1 {("G1" 34)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 65571)}
wvSelectSignal -win $_nWave1 {( "G1" 65569 )} 
wvSelectSignal -win $_nWave1 {( "G1" 65567 )} 
wvScrollDown -win $_nWave1 2
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 65568 )} 
wvSelectSignal -win $_nWave1 {( "G1" 65567 )} 
wvSelectSignal -win $_nWave1 {( "G1" 65571 )} 
wvScrollDown -win $_nWave1 0
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 65534
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSetPosition -win $_nWave1 {("G1" 34)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 35)}
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 35)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 4225.912095 -snap {("G1" 34)}
wvSetCursor -win $_nWave1 5507.270324 -snap {("G1" 4)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomAll -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomAll -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvZoom -win $_nWave1 0.000000 180237.937872
wvSetCursor -win $_nWave1 81124.940972 -snap {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 99)}
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
wvScrollUp -win $_nWave1 37
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 35)}
wvSetCursor -win $_nWave1 68854.942558 -snap {("G1" 8)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 40)}
wvSetPosition -win $_nWave1 {("G1" 40)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/top/reg_file/registers\[0:31\]} \
{/top_tb/top/reg_file/registers\[0\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[1\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[2\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[3\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[4\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[5\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[6\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[7\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[8\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[9\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[10\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[11\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[12\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[13\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[14\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[15\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[16\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[17\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[18\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[19\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[20\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[21\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[22\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[23\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[24\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[25\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[26\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[27\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[28\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[29\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[30\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[31\]\[63:0\]} \
{/top_tb/top/dm/mem\[0:65535\]} \
{/top_tb/top/current_pc\[63:0\]} \
{/top_tb/top/dm/rdaddress\[31:0\]} \
{/top_tb/top/dm/rden} \
{/top_tb/top/dm/wraddress\[31:0\]} \
{/top_tb/top/dm/wren\[7:0\]} \
{/top_tb/top/dm/write_data\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 36 37 38 39 40 )} 
wvSetPosition -win $_nWave1 {("G1" 40)}
wvSetPosition -win $_nWave1 {("G1" 40)}
wvSetPosition -win $_nWave1 {("G1" 40)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/top/reg_file/registers\[0:31\]} \
{/top_tb/top/reg_file/registers\[0\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[1\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[2\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[3\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[4\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[5\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[6\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[7\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[8\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[9\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[10\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[11\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[12\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[13\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[14\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[15\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[16\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[17\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[18\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[19\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[20\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[21\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[22\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[23\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[24\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[25\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[26\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[27\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[28\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[29\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[30\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[31\]\[63:0\]} \
{/top_tb/top/dm/mem\[0:65535\]} \
{/top_tb/top/current_pc\[63:0\]} \
{/top_tb/top/dm/rdaddress\[31:0\]} \
{/top_tb/top/dm/rden} \
{/top_tb/top/dm/wraddress\[31:0\]} \
{/top_tb/top/dm/wren\[7:0\]} \
{/top_tb/top/dm/write_data\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 36 37 38 39 40 )} 
wvSetPosition -win $_nWave1 {("G1" 40)}
wvGetSignalClose -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 87319.503278 -snap {("G1" 39)}
wvZoom -win $_nWave1 55274.555963 86009.115098
wvSetCursor -win $_nWave1 67665.885158 -snap {("G1" 36)}
wvSetCursor -win $_nWave1 70509.796777 -snap {("G1" 36)}
wvSetCursor -win $_nWave1 67523.689578 -snap {("G1" 37)}
wvZoomAll -win $_nWave1
wvZoom -win $_nWave1 0.000000 133509.583609
wvSetCursor -win $_nWave1 46591.579739 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 49680.036729 -snap {("G1" 16)}
wvResizeWindow -win $_nWave1 -1 27 1436 917
wvResizeWindow -win $_nWave1 -1 27 1917 917
wvResizeWindow -win $_nWave1 -1 27 1436 1004
wvResizeWindow -win $_nWave1 -1 27 1436 917
wvResizeWindow -win $_nWave1 -1 27 1835 917
wvSetCursor -win $_nWave1 50416.182929 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 49621.532060 -snap {("G1" 9)}
wvZoom -win $_nWave1 48738.586649 52623.546455
wvSetCursor -win $_nWave1 50503.243444 -snap {("G1" 9)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
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
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvZoomAll -win $_nWave1
wvZoom -win $_nWave1 0.000000 155276.030748
wvSetCursor -win $_nWave1 52192.711942 -snap {("G1" 9)}
wvZoom -win $_nWave1 41233.327522 55447.974642
wvSetCursor -win $_nWave1 49468.088152 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 50481.291511 -snap {("G1" 9)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/dm"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/dm"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/alu"
wvSetPosition -win $_nWave1 {("G1" 42)}
wvSetPosition -win $_nWave1 {("G1" 42)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/top/reg_file/registers\[0:31\]} \
{/top_tb/top/reg_file/registers\[0\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[1\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[2\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[3\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[4\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[5\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[6\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[7\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[8\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[9\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[10\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[11\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[12\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[13\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[14\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[15\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[16\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[17\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[18\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[19\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[20\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[21\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[22\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[23\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[24\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[25\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[26\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[27\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[28\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[29\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[30\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[31\]\[63:0\]} \
{/top_tb/top/dm/mem\[0:65535\]} \
{/top_tb/top/current_pc\[63:0\]} \
{/top_tb/top/dm/rdaddress\[31:0\]} \
{/top_tb/top/dm/rden} \
{/top_tb/top/dm/wraddress\[31:0\]} \
{/top_tb/top/dm/wren\[7:0\]} \
{/top_tb/top/dm/write_data\[63:0\]} \
{/top_tb/top/alu/alu_out\[63:0\]} \
{/top_tb/top/alu/alu_out_32bits\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 42 )} 
wvSetPosition -win $_nWave1 {("G1" 42)}
wvSetPosition -win $_nWave1 {("G1" 42)}
wvSetPosition -win $_nWave1 {("G1" 42)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/top/reg_file/registers\[0:31\]} \
{/top_tb/top/reg_file/registers\[0\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[1\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[2\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[3\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[4\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[5\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[6\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[7\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[8\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[9\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[10\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[11\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[12\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[13\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[14\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[15\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[16\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[17\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[18\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[19\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[20\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[21\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[22\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[23\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[24\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[25\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[26\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[27\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[28\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[29\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[30\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[31\]\[63:0\]} \
{/top_tb/top/dm/mem\[0:65535\]} \
{/top_tb/top/current_pc\[63:0\]} \
{/top_tb/top/dm/rdaddress\[31:0\]} \
{/top_tb/top/dm/rden} \
{/top_tb/top/dm/wraddress\[31:0\]} \
{/top_tb/top/dm/wren\[7:0\]} \
{/top_tb/top/dm/write_data\[63:0\]} \
{/top_tb/top/alu/alu_out\[63:0\]} \
{/top_tb/top/alu/alu_out_32bits\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 42 )} 
wvSetPosition -win $_nWave1 {("G1" 42)}
wvGetSignalClose -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/dm"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/alu"
wvSetPosition -win $_nWave1 {("G1" 44)}
wvSetPosition -win $_nWave1 {("G1" 44)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/top/reg_file/registers\[0:31\]} \
{/top_tb/top/reg_file/registers\[0\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[1\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[2\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[3\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[4\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[5\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[6\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[7\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[8\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[9\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[10\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[11\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[12\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[13\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[14\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[15\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[16\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[17\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[18\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[19\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[20\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[21\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[22\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[23\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[24\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[25\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[26\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[27\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[28\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[29\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[30\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[31\]\[63:0\]} \
{/top_tb/top/dm/mem\[0:65535\]} \
{/top_tb/top/current_pc\[63:0\]} \
{/top_tb/top/dm/rdaddress\[31:0\]} \
{/top_tb/top/dm/rden} \
{/top_tb/top/dm/wraddress\[31:0\]} \
{/top_tb/top/dm/wren\[7:0\]} \
{/top_tb/top/dm/write_data\[63:0\]} \
{/top_tb/top/alu/alu_out\[63:0\]} \
{/top_tb/top/alu/alu_out_32bits\[31:0\]} \
{/top_tb/top/alu/operand1\[63:0\]} \
{/top_tb/top/alu/operand2\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 44 )} 
wvSetPosition -win $_nWave1 {("G1" 44)}
wvSetPosition -win $_nWave1 {("G1" 44)}
wvSetPosition -win $_nWave1 {("G1" 44)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/top/reg_file/registers\[0:31\]} \
{/top_tb/top/reg_file/registers\[0\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[1\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[2\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[3\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[4\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[5\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[6\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[7\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[8\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[9\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[10\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[11\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[12\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[13\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[14\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[15\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[16\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[17\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[18\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[19\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[20\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[21\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[22\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[23\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[24\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[25\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[26\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[27\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[28\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[29\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[30\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[31\]\[63:0\]} \
{/top_tb/top/dm/mem\[0:65535\]} \
{/top_tb/top/current_pc\[63:0\]} \
{/top_tb/top/dm/rdaddress\[31:0\]} \
{/top_tb/top/dm/rden} \
{/top_tb/top/dm/wraddress\[31:0\]} \
{/top_tb/top/dm/wren\[7:0\]} \
{/top_tb/top/dm/write_data\[63:0\]} \
{/top_tb/top/alu/alu_out\[63:0\]} \
{/top_tb/top/alu/alu_out_32bits\[31:0\]} \
{/top_tb/top/alu/operand1\[63:0\]} \
{/top_tb/top/alu/operand2\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 44 )} 
wvSetPosition -win $_nWave1 {("G1" 44)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/alu"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/dm"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/alu"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/reg_pc"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/imm_ext"
wvSetPosition -win $_nWave1 {("G1" 45)}
wvSetPosition -win $_nWave1 {("G1" 45)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/top/reg_file/registers\[0:31\]} \
{/top_tb/top/reg_file/registers\[0\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[1\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[2\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[3\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[4\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[5\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[6\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[7\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[8\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[9\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[10\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[11\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[12\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[13\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[14\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[15\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[16\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[17\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[18\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[19\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[20\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[21\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[22\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[23\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[24\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[25\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[26\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[27\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[28\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[29\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[30\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[31\]\[63:0\]} \
{/top_tb/top/dm/mem\[0:65535\]} \
{/top_tb/top/current_pc\[63:0\]} \
{/top_tb/top/dm/rdaddress\[31:0\]} \
{/top_tb/top/dm/rden} \
{/top_tb/top/dm/wraddress\[31:0\]} \
{/top_tb/top/dm/wren\[7:0\]} \
{/top_tb/top/dm/write_data\[63:0\]} \
{/top_tb/top/alu/alu_out\[63:0\]} \
{/top_tb/top/alu/alu_out_32bits\[31:0\]} \
{/top_tb/top/alu/operand1\[63:0\]} \
{/top_tb/top/alu/operand2\[63:0\]} \
{/top_tb/top/imm_ext/imm_ext_out\[64:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 45 )} 
wvSetPosition -win $_nWave1 {("G1" 45)}
wvSetPosition -win $_nWave1 {("G1" 45)}
wvSetPosition -win $_nWave1 {("G1" 45)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/top/reg_file/registers\[0:31\]} \
{/top_tb/top/reg_file/registers\[0\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[1\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[2\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[3\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[4\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[5\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[6\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[7\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[8\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[9\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[10\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[11\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[12\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[13\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[14\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[15\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[16\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[17\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[18\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[19\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[20\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[21\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[22\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[23\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[24\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[25\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[26\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[27\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[28\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[29\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[30\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[31\]\[63:0\]} \
{/top_tb/top/dm/mem\[0:65535\]} \
{/top_tb/top/current_pc\[63:0\]} \
{/top_tb/top/dm/rdaddress\[31:0\]} \
{/top_tb/top/dm/rden} \
{/top_tb/top/dm/wraddress\[31:0\]} \
{/top_tb/top/dm/wren\[7:0\]} \
{/top_tb/top/dm/write_data\[63:0\]} \
{/top_tb/top/alu/alu_out\[63:0\]} \
{/top_tb/top/alu/alu_out_32bits\[31:0\]} \
{/top_tb/top/alu/operand1\[63:0\]} \
{/top_tb/top/alu/operand2\[63:0\]} \
{/top_tb/top/imm_ext/imm_ext_out\[64:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 45 )} 
wvSetPosition -win $_nWave1 {("G1" 45)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/alu"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/dm"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/imm_ext"
wvSetPosition -win $_nWave1 {("G1" 46)}
wvSetPosition -win $_nWave1 {("G1" 46)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/top/reg_file/registers\[0:31\]} \
{/top_tb/top/reg_file/registers\[0\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[1\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[2\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[3\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[4\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[5\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[6\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[7\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[8\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[9\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[10\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[11\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[12\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[13\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[14\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[15\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[16\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[17\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[18\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[19\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[20\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[21\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[22\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[23\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[24\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[25\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[26\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[27\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[28\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[29\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[30\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[31\]\[63:0\]} \
{/top_tb/top/dm/mem\[0:65535\]} \
{/top_tb/top/current_pc\[63:0\]} \
{/top_tb/top/dm/rdaddress\[31:0\]} \
{/top_tb/top/dm/rden} \
{/top_tb/top/dm/wraddress\[31:0\]} \
{/top_tb/top/dm/wren\[7:0\]} \
{/top_tb/top/dm/write_data\[63:0\]} \
{/top_tb/top/alu/alu_out\[63:0\]} \
{/top_tb/top/alu/alu_out_32bits\[31:0\]} \
{/top_tb/top/alu/operand1\[63:0\]} \
{/top_tb/top/alu/operand2\[63:0\]} \
{/top_tb/top/imm_ext/imm_ext_out\[64:0\]} \
{/top_tb/top/imm_ext/inst\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvSetPosition -win $_nWave1 {("G1" 46)}
wvSetPosition -win $_nWave1 {("G1" 46)}
wvSetPosition -win $_nWave1 {("G1" 46)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/top/reg_file/registers\[0:31\]} \
{/top_tb/top/reg_file/registers\[0\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[1\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[2\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[3\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[4\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[5\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[6\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[7\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[8\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[9\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[10\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[11\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[12\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[13\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[14\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[15\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[16\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[17\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[18\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[19\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[20\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[21\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[22\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[23\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[24\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[25\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[26\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[27\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[28\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[29\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[30\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[31\]\[63:0\]} \
{/top_tb/top/dm/mem\[0:65535\]} \
{/top_tb/top/current_pc\[63:0\]} \
{/top_tb/top/dm/rdaddress\[31:0\]} \
{/top_tb/top/dm/rden} \
{/top_tb/top/dm/wraddress\[31:0\]} \
{/top_tb/top/dm/wren\[7:0\]} \
{/top_tb/top/dm/write_data\[63:0\]} \
{/top_tb/top/alu/alu_out\[63:0\]} \
{/top_tb/top/alu/alu_out_32bits\[31:0\]} \
{/top_tb/top/alu/operand1\[63:0\]} \
{/top_tb/top/alu/operand2\[63:0\]} \
{/top_tb/top/imm_ext/imm_ext_out\[64:0\]} \
{/top_tb/top/imm_ext/inst\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvSetPosition -win $_nWave1 {("G1" 46)}
wvGetSignalClose -win $_nWave1
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 45)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/alu"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/dm"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/imm_ext"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/imm_ext"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/decoder"
wvSetPosition -win $_nWave1 {("G1" 46)}
wvSetPosition -win $_nWave1 {("G1" 46)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/top/reg_file/registers\[0:31\]} \
{/top_tb/top/reg_file/registers\[0\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[1\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[2\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[3\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[4\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[5\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[6\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[7\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[8\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[9\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[10\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[11\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[12\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[13\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[14\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[15\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[16\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[17\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[18\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[19\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[20\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[21\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[22\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[23\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[24\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[25\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[26\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[27\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[28\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[29\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[30\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[31\]\[63:0\]} \
{/top_tb/top/dm/mem\[0:65535\]} \
{/top_tb/top/current_pc\[63:0\]} \
{/top_tb/top/dm/rdaddress\[31:0\]} \
{/top_tb/top/dm/rden} \
{/top_tb/top/dm/wraddress\[31:0\]} \
{/top_tb/top/dm/wren\[7:0\]} \
{/top_tb/top/dm/write_data\[63:0\]} \
{/top_tb/top/alu/alu_out\[63:0\]} \
{/top_tb/top/alu/alu_out_32bits\[31:0\]} \
{/top_tb/top/alu/operand1\[63:0\]} \
{/top_tb/top/alu/operand2\[63:0\]} \
{/top_tb/top/imm_ext/imm_ext_out\[64:0\]} \
{/top_tb/top/decoder/dc_out_func3\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvSetPosition -win $_nWave1 {("G1" 46)}
wvSetPosition -win $_nWave1 {("G1" 46)}
wvSetPosition -win $_nWave1 {("G1" 46)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/top/reg_file/registers\[0:31\]} \
{/top_tb/top/reg_file/registers\[0\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[1\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[2\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[3\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[4\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[5\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[6\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[7\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[8\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[9\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[10\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[11\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[12\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[13\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[14\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[15\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[16\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[17\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[18\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[19\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[20\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[21\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[22\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[23\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[24\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[25\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[26\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[27\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[28\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[29\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[30\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[31\]\[63:0\]} \
{/top_tb/top/dm/mem\[0:65535\]} \
{/top_tb/top/current_pc\[63:0\]} \
{/top_tb/top/dm/rdaddress\[31:0\]} \
{/top_tb/top/dm/rden} \
{/top_tb/top/dm/wraddress\[31:0\]} \
{/top_tb/top/dm/wren\[7:0\]} \
{/top_tb/top/dm/write_data\[63:0\]} \
{/top_tb/top/alu/alu_out\[63:0\]} \
{/top_tb/top/alu/alu_out_32bits\[31:0\]} \
{/top_tb/top/alu/operand1\[63:0\]} \
{/top_tb/top/alu/operand2\[63:0\]} \
{/top_tb/top/imm_ext/imm_ext_out\[64:0\]} \
{/top_tb/top/decoder/dc_out_func3\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvSetPosition -win $_nWave1 {("G1" 46)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/alu"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/dm"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/imm_ext"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/decoder"
wvSetPosition -win $_nWave1 {("G1" 47)}
wvSetPosition -win $_nWave1 {("G1" 47)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/top/reg_file/registers\[0:31\]} \
{/top_tb/top/reg_file/registers\[0\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[1\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[2\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[3\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[4\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[5\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[6\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[7\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[8\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[9\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[10\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[11\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[12\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[13\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[14\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[15\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[16\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[17\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[18\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[19\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[20\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[21\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[22\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[23\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[24\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[25\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[26\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[27\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[28\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[29\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[30\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[31\]\[63:0\]} \
{/top_tb/top/dm/mem\[0:65535\]} \
{/top_tb/top/current_pc\[63:0\]} \
{/top_tb/top/dm/rdaddress\[31:0\]} \
{/top_tb/top/dm/rden} \
{/top_tb/top/dm/wraddress\[31:0\]} \
{/top_tb/top/dm/wren\[7:0\]} \
{/top_tb/top/dm/write_data\[63:0\]} \
{/top_tb/top/alu/alu_out\[63:0\]} \
{/top_tb/top/alu/alu_out_32bits\[31:0\]} \
{/top_tb/top/alu/operand1\[63:0\]} \
{/top_tb/top/alu/operand2\[63:0\]} \
{/top_tb/top/imm_ext/imm_ext_out\[64:0\]} \
{/top_tb/top/decoder/dc_out_func3\[2:0\]} \
{/top_tb/top/decoder/dc_out_opcode\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 47 )} 
wvSetPosition -win $_nWave1 {("G1" 47)}
wvSetPosition -win $_nWave1 {("G1" 47)}
wvSetPosition -win $_nWave1 {("G1" 47)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/top/reg_file/registers\[0:31\]} \
{/top_tb/top/reg_file/registers\[0\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[1\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[2\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[3\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[4\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[5\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[6\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[7\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[8\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[9\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[10\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[11\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[12\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[13\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[14\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[15\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[16\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[17\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[18\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[19\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[20\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[21\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[22\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[23\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[24\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[25\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[26\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[27\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[28\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[29\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[30\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[31\]\[63:0\]} \
{/top_tb/top/dm/mem\[0:65535\]} \
{/top_tb/top/current_pc\[63:0\]} \
{/top_tb/top/dm/rdaddress\[31:0\]} \
{/top_tb/top/dm/rden} \
{/top_tb/top/dm/wraddress\[31:0\]} \
{/top_tb/top/dm/wren\[7:0\]} \
{/top_tb/top/dm/write_data\[63:0\]} \
{/top_tb/top/alu/alu_out\[63:0\]} \
{/top_tb/top/alu/alu_out_32bits\[31:0\]} \
{/top_tb/top/alu/operand1\[63:0\]} \
{/top_tb/top/alu/operand2\[63:0\]} \
{/top_tb/top/imm_ext/imm_ext_out\[64:0\]} \
{/top_tb/top/decoder/dc_out_func3\[2:0\]} \
{/top_tb/top/decoder/dc_out_opcode\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 47 )} 
wvSetPosition -win $_nWave1 {("G1" 47)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 47 )} 
wvSetRadix -win $_nWave1 -format Bin
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomAll -win $_nWave1
wvScrollUp -win $_nWave1 10
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetCursor -win $_nWave1 62611.177498 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 62835.269043 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 60504.716981 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 62387.085954 -snap {("G1" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvSetCursor -win $_nWave1 63462.725367 -snap {("G1" 35)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomAll -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvZoom -win $_nWave1 0.000000 804612.159329
wvSetCursor -win $_nWave1 454316.299607 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 462188.116680 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 469497.661104 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 476244.932880 -snap {("G1" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 22382.334032 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 474575.426275 -snap {("G1" 5)}
wvResizeWindow -win $_nWave1 -1 27 1835 917
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/top"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/reg_file"
wvSetPosition -win $_nWave1 {("G1" 47)}
wvSetPosition -win $_nWave1 {("G1" 47)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/top/reg_file/registers\[0:31\]} \
{/top_tb/top/reg_file/registers\[0\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[1\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[2\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[3\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[4\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[5\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[6\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[7\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[8\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[9\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[10\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[11\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[12\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[13\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[14\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[15\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[16\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[17\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[18\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[19\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[20\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[21\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[22\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[23\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[24\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[25\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[26\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[27\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[28\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[29\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[30\]\[63:0\]} \
{/top_tb/top/reg_file/registers\[31\]\[63:0\]} \
{/top_tb/top/dm/mem\[0:65535\]} \
{/top_tb/top/current_pc\[63:0\]} \
{/top_tb/top/dm/rdaddress\[31:0\]} \
{/top_tb/top/dm/rden} \
{/top_tb/top/dm/wraddress\[31:0\]} \
{/top_tb/top/dm/wren\[7:0\]} \
{/top_tb/top/dm/write_data\[63:0\]} \
{/top_tb/top/alu/alu_out\[63:0\]} \
{/top_tb/top/alu/alu_out_32bits\[31:0\]} \
{/top_tb/top/alu/operand1\[63:0\]} \
{/top_tb/top/alu/operand2\[63:0\]} \
{/top_tb/top/imm_ext/imm_ext_out\[64:0\]} \
{/top_tb/top/decoder/dc_out_func3\[2:0\]} \
{/top_tb/top/decoder/dc_out_opcode\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSetPosition -win $_nWave1 {("G1" 47)}
wvGetSignalClose -win $_nWave1
wvExit

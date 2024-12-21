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
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
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
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvGetSignalClose -win $_nWave1
wvZoomAll -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvZoom -win $_nWave1 0.000000 706508.515815
wvZoom -win $_nWave1 205420.359221 267734.066516
wvSetCursor -win $_nWave1 231384.403927 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 246394.275028 -snap {("G1" 5)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top/reg_file"
wvGetSignalSetScope -win $_nWave1 "/top_tb/top"
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 34)}
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
{/top_tb/top/current_pc\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 34)}
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
{/top_tb/top/current_pc\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSetPosition -win $_nWave1 {("G1" 34)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 231384.403927 -snap {("G1" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 237448.998311 -snap {("G1" 34)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomAll -win $_nWave1
wvZoom -win $_nWave1 460881.307786 499846.173966
wvSetCursor -win $_nWave1 474414.725419 -snap {("G1" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomAll -win $_nWave1
wvZoom -win $_nWave1 0.000000 663503.649635
wvSetCursor -win $_nWave1 462918.908839 -snap {("G1" 5)}
wvZoom -win $_nWave1 446775.267729 494802.600032
wvSetCursor -win $_nWave1 467458.571421 -snap {("G1" 34)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomAll -win $_nWave1
wvZoom -win $_nWave1 0.000000 595924.574209
wvSetCursor -win $_nWave1 228365.256540 -snap {("G1" 5)}
wvZoom -win $_nWave1 201178.916476 243952.091510

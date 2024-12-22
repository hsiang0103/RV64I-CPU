.data

.text
.globl main

main:
# ######################################
# ### Load address of _answer to s0 
# ######################################
    addi sp, sp, -8
    sw s0, 0(sp)
    la s0, _answer

# ######################################
# ### auipc test cases
# ######################################

auipc_2:
    li  gp, 2
    .align 3
    lla a0, 1f + 10000
    jal a1, 1f
1:  sub a0, a0, a1
    li  x7, 10000
    bne a0, x7, failed

auipc_3:
    li  gp, 3
    .align 3
    lla a0, 1f - 10000
    jal a1, 1f
1:  sub a0, a0, a1
    li  x7, -10000
    bne a0, x7, failed

pass:
    li  gp, 0         # 0 means all tests passed

failed:
    sw  gp, 0(s0)     # Record the wrong test number

main_exit:
# ######################################
# ### Return to end the simulation
# ######################################
    lw  s0, 0(sp)      # Retrieve Callee Saved
    addi sp, sp, 8
    ret

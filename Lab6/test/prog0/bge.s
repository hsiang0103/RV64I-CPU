.data

.text
.globl main

main:
# ######################################
# ### Load address of _answer to s0 
# ######################################
    mv  x28, s0
    mv  x29, ra

# ######################################
# ### bge test cases
# ######################################

#-------------------------------------------------------------
# Branch tests
#-------------------------------------------------------------

# Each test checks both forward and backward branches

bge_2:
    li  gp, 2
    li  x1, 0
    li  x2, 0
    bge x1, x2, 2f
    bne x0, gp, failed
1:  bne x0, gp, 3f
2:  bge x1, x2, 1b
    bne x0, gp, failed
3:

bge_3:
    li  gp, 3
    li  x1, 1
    li  x2, 1
    bge x1, x2, 2f
    bne x0, gp, failed
1:  bne x0, gp, 3f
2:  bge x1, x2, 1b
    bne x0, gp, failed
3:

bge_4:
    li  gp, 4
    li  x1, -1
    li  x2, -1
    bge x1, x2, 2f
    bne x0, gp, failed
1:  bne x0, gp, 3f
2:  bge x1, x2, 1b
    bne x0, gp, failed
3:

bge_5:
    li  gp, 5
    li  x1, 1
    li  x2, 0
    bge x1, x2, 2f
    bne x0, gp, failed
1:  bne x0, gp, 3f
2:  bge x1, x2, 1b
    bne x0, gp, failed
3:

bge_6:
    li  gp, 6
    li  x1, 1
    li  x2, -1
    bge x1, x2, 2f
    bne x0, gp, failed
1:  bne x0, gp, 3f
2:  bge x1, x2, 1b
    bne x0, gp, failed
3:

bge_7:
    li  gp, 7
    li  x1, -1
    li  x2, -2
    bge x1, x2, 2f
    bne x0, gp, failed
1:  bne x0, gp, 3f
2:  bge x1, x2, 1b
    bne x0, gp, failed
3:

bge_8:
    li  gp, 8
    li  x1, 0
    li  x2, 1
    bge x1, x2, 1f
    bne x0, gp, 2f
1:  bne x0, gp, failed
2:  bge x1, x2, 1b
3:

bge_9:
    li  gp, 9
    li  x1, -1
    li  x2, 1
    bge x1, x2, 1f
    bne x0, gp, 2f
1:  bne x0, gp, failed
2:  bge x1, x2, 1b
3:

bge_10:
    li  gp, 10
    li  x1, -2
    li  x2, -1
    bge x1, x2, 1f
    bne x0, gp, 2f
1:  bne x0, gp, failed
2:  bge x1, x2, 1b
3:

bge_11:
    li  gp, 11
    li  x1, -2
    li  x2, 1
    bge x1, x2, 1f
    bne x0, gp, 2f
1:  bne x0, gp, failed
2:  bge x1, x2, 1b
3:

#-------------------------------------------------------------
# Bypassing tests
#-------------------------------------------------------------

bge_12:
    li  gp, 12
    li  x4, 0
1:  li  x1, -1
    li  x2, 0
    bge x1, x2, failed
    addi  x4, x4, 1
    li  x5, 2
    bne x4, x5, 1b

bge_13:
    li  gp, 13
    li  x4, 0
1:  li  x1, -1
    li  x2, 0
    nop
    bge x1, x2, failed
    addi  x4, x4, 1
    li  x5, 2
    bne x4, x5, 1b

bge_14:
    li  gp, 14
    li  x4, 0
1:  li  x1, -1
    li  x2, 0
    nop    
    nop
    bge x1, x2, failed
    addi  x4, x4, 1
    li  x5, 2
    bne x4, x5, 1b

bge_15:
    li  gp, 15
    li  x4, 0
1:  li  x1, -1
    nop
    li  x2, 0
    bge x1, x2, failed
    addi  x4, x4, 1
    li  x5, 2
    bne x4, x5, 1b

bge_16:
    li  gp, 16
    li  x4, 0
1:  li  x1, -1
    nop
    li  x2, 0
    nop
    bge x1, x2, failed
    addi  x4, x4, 1
    li  x5, 2
    bne x4, x5, 1b

bge_17:
    li  gp, 17
    li  x4, 0
1:  li  x1, -1
    nop    
    nop
    li  x2, 0
    bge x1, x2, failed
    addi  x4, x4, 1
    li  x5, 2
    bne x4, x5, 1b

bge_18:
    li  gp, 18
    li  x4, 0
1:  li  x1, -1
    li  x2, 0
    bge x1, x2, failed
    addi  x4, x4, 1
    li  x5, 2
    bne x4, x5, 1b

bge_19:
    li  gp, 19
    li  x4, 0
1:  li  x1, -1
    li  x2, 0
    nop
    bge x1, x2, failed
    addi  x4, x4, 1
    li  x5, 2
    bne x4, x5, 1b

bge_20:
    li  gp, 20
    li  x4, 0
1:  li  x1, -1
    li  x2, 0
    nop    
    nop
    bge x1, x2, failed
    addi  x4, x4, 1
    li  x5, 2
    bne x4, x5, 1b

bge_21:
    li  gp, 21
    li  x4, 0
1:  li  x1, -1
    nop
    li  x2, 0
    bge x1, x2, failed
    addi  x4, x4, 1
    li  x5, 2
    bne x4, x5, 1b

bge_22:
    li  gp, 22
    li  x4, 0
1:  li  x1, -1
    nop
    li  x2, 0
    nop
    bge x1, x2, failed
    addi  x4, x4, 1
    li  x5, 2
    bne x4, x5, 1b

bge_23:
    li  gp, 23
    li  x4, 0
1:  li  x1, -1
    nop    
    nop
    li  x2, 0
    bge x1, x2, failed
    addi  x4, x4, 1
    li  x5, 2
    bne x4, x5, 1b

#-------------------------------------------------------------
# Test delay slot instructions not executed nor bypassed
#-------------------------------------------------------------

bge_24:
    li  gp, 24
    li  x1, 1
    bge x1, x0, 1f
    addi x1, x1, 1
    addi x1, x1, 1
    addi x1, x1, 1
    addi x1, x1, 1
1:  addi x1, x1, 1
    addi x1, x1, 1
    li  x7, 3
    bne x1, x7, failed

pass:
    li  gp, 0         # 0 means all tests passed

failed:
    sw  gp, 0(s0)     # Record the wrong test number

main_exit:
# ######################################
# ### Return to end the simulation
# ######################################
    mv  ra, x29
    mv  s0, x28
    ret

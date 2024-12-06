.data
num_test: .word 3 
TEST1_SIZE: .word 34
TEST2_SIZE: .word 19
TEST3_SIZE: .word 29
test1: .word 3,41,18,8,40,6,45,1,18,10,24,46,37,23,43,12,3,37,0,15,11,49,47,27,23,30,16,10,45,39,1,23,40,38
test2: .word -3,-23,-22,-6,-21,-19,-1,0,-2,-47,-17,-46,-6,-30,-50,-13,-47,-9,-50
test3: .word -46,0,-29,-2,23,-46,46,9,-18,-23,35,-37,3,-24,-18,22,0,15,-43,-16,-17,-42,-49,-29,19,-44,0,-18,23
.text
.globl main

main:

# ######################################
# ### Load address of _answer to s0 
# ######################################

  addi sp, sp, -4
  sw s0, 0(sp)
  la s0, 0x9000

# ######################################


# ######################################
# ### Main Program
# ######################################

###########################################################
    # < Function >
    #    main procedure
    # < Parameters >
    #    NULL
    # < Return Value>
    #    NULL
    ###########################################################
    # < local Variable>
    #    s0 : address of answer (0x01000000)
    #    s1 : address of num_test
    #    s2 : address of the TEST_SIZE
    #    s3 : address of the first data
    #    t0 : num_test
    #    t1 : TEST_SIZE
    #    t2 : temp
    ###########################################################
    
    ## Save ra & Callee Saved
    addi sp, sp, -20        # Allocate stack space
                            # sp = @sp - 16
    sw ra, 16(sp)           # @ra -> MEM[@sp - 4]
    sw s3, 12(sp)           # @s3 -> MEM[@sp - 8]
    sw s2, 8(sp)            # @s2 -> MEM[@sp - 12]
    sw s1, 4(sp)            # @s1 -> MEM[@sp - 16]
    sw s0, 0(sp)            # @s0 -> MEM[@sp - 20]
    
    ## get answer address
    li s0, 0x9000           # s0 = 0x9000
    
    ## Get numtest
    la s1, num_test         # s1 = Addr(num_test)
    lw t0, num_test         # t0 = num_test
    
    ## Get address of the TEST_SIZE
    la s2, TEST1_SIZE       # s2 = Addr(TEST1_SIZE)
    lw t1, TEST1_SIZE       # t1 = TEST1_SIZE
    
    ## Get address of the first data
    la s3, test1            # s3 = Addr(test1)
    
Loop:                       # for Loop1
    ############### Call Function Procedure ###############
    # Caller Saved    
    addi sp, sp, -12        # Allocate stack space
                            # sp = @sp - 28
    sw ra, 8(sp)            # @ra -> MEM[@sp - 20]
    sw t1, 4(sp)            # t1 -> MEM[@sp - 24]
    sw t0, 0(sp)            # t0 -> MEM[@sp - 28]
    
    # Pass Arguments
    mv a0, s3               # a3 = address of the first data
    li a1, 0                # a1 = 0
    lw a2, 0(s2)            # a2 = TEST_SIZE
    addi a2, a2, -1         # a2 = TEST_SIZE - 1
    
    # Jump to Callee
    jal ra, Mergesort       # ra = Addr(lw t0, 0(sp))
    
    ## Retrieve Caller Saved
    lw t0, 0(sp)            # t0 = MEM[@sp - 28] 
    lw t1, 4(sp)            # t1 = MEM[@sp - 24] 
    lw ra, 8(sp)            # ra = MEM[@sp - 20] 
    addi sp, sp, 12         # sp = @sp - 16
    #######################################################

Loop2:                      # for Loop2
    beq t1, x0, Next        # if(t1 == 0), go to Next
    lw t2, 0(s3)            # else t2 = data
    sw t2, 0(s0)            # t2 -> MEM[s0]
    addi s0, s0, 4          # s0 = s0 + 4
    addi s3, s3, 4          # s3 = s3 + 4
    addi t1, t1, -1         # t1 = t1 - 1
    j Loop2                 # jump to Loop2  
    
Next:
    addi t0, t0, -1         # num_test--
    beq t0, x0, Done        # if(num_test == 0),go to Done
    addi s2, s2, 4          # next TEST_SIZE
    lw t1, 0(s2)            # t1 = MEM[s2]
    j Loop                  # jump to Loop
    
Done:
    lw ra, 16(sp)            # ra = @ra
    lw s3, 12(sp)            # s3 = @s3
    lw s2, 8(sp)             # s2 = @s2
    lw s1, 4(sp)             # s1 = @s1    
    lw s0, 0(sp)             # s0 = @s0
    addi sp, sp, 16         # sp = @sp
    j main_exit
    
    
Mergesort:    
    ###########################################################
    # < Function >
    #    mergesort
    # < Parameters >
    #    a0 : address of first data
    #    a1 : start
    #    a2 : end
    # < Return Value>
    #    NULL
    ###########################################################
    # < local Variable>
    #    t0 : mid
    #    t1 : mid + 1
    #    t2 : start + end
    #    t3 : start
    #    t4 : end
    ###########################################################

    # Save ra
    addi sp, sp, -4         # Allocate stack space
                            # sp = @sp - 4
    sw ra, 0(sp)            # @ra -> MEM[@sp - 4]
    blt a1, a2, Recur       # if(start < end),go to Recur
    j Done3                 # else go to Done3
Recur:
    # get mid and mid+1
    add t2, a1, a2          # t2 = start + end
    srli t0, t2, 1          # t0 = t2 / 2 = mid
    addi t1, t0, 1          # t1 = mid + 1
    mv t3, a1               # t3 = start
    mv t4, a2               # t4 = end
    
    ############### Call Function Procedure ###############
    # Caller Saved    
    addi sp, sp, -24        # Allocate stack space
                            # sp = @sp - 28
    sw ra, 20(sp)           # @ra -> MEM[@sp - 8]
    sw t4, 16(sp)           # t4 -> MEM[@sp - 12]
    sw t3, 12(sp)           # t3 -> MEM[@sp - 16]
    sw t2, 8(sp)            # t2 -> MEM[@sp - 20]
    sw t1, 4(sp)            # t1 -> MEM[@sp - 24]
    sw t0, 0(sp)            # t0 -> MEM[@sp - 28]
    
    # Pass Arguments
    mv a0, a0               # a0 = address of first data
    mv a1, t3               # a1 = start
    mv a2, t0               # t2 = mid
    
    # Jump to Callee
    jal ra, Mergesort       # ra = Addr(lw ra, 20(sp))
    
    ## Retrieve Caller Saved
    lw ra, 20(sp)           # ra = MEM[@sp - 28]
    lw t4, 16(sp)           # t4 = MEM[@sp - 24]
    lw t3, 12(sp)           # t3 = MEM[@sp - 20]
    lw t2, 8(sp)            # t2 = MEM[@sp - 16]
    lw t1, 4(sp)            # t1 = MEM[@sp - 12]
    lw t0, 0(sp)            # t0 = MEM[@sp - 8]
    addi sp, sp, 24         # sp = @sp - 4
    #######################################################
    ############### Call Function Procedure ###############
    # Caller Saved    
    addi sp, sp, -24        # Allocate stack space
                            # sp = @sp - 28
    sw ra, 20(sp)           # @ra -> MEM[@sp - 8]
    sw t4, 16(sp)           # t4 -> MEM[@sp - 12]
    sw t3, 12(sp)           # t3 -> MEM[@sp - 16]
    sw t2, 8(sp)            # t2 -> MEM[@sp - 20]
    sw t1, 4(sp)            # t1 -> MEM[@sp - 24]
    sw t0, 0(sp)            # t0 -> MEM[@sp - 28]
    
    # Pass Arguments
    mv a0, a0               # a0 = address of first data                
    mv a1, t1               # a0 = mid + 1
    mv a2, t4               # a0 = end
    
    # Jump to Callee
    jal ra, Mergesort       # ra = Addr(lw ra, 20(sp))
    
    ## Retrieve Caller Saved
    lw ra, 20(sp)           # ra = MEM[@sp - 28]
    lw t4, 16(sp)           # t4 = MEM[@sp - 24]
    lw t3, 12(sp)           # t3 = MEM[@sp - 20]
    lw t2, 8(sp)            # t2 = MEM[@sp - 16]
    lw t1, 4(sp)            # t1 = MEM[@sp - 12]
    lw t0, 0(sp)            # t0 = MEM[@sp - 8]
    addi sp, sp, 24         # sp = @sp - 4
    #######################################################
    ############### Call Function Procedure ###############
    # Caller Saved    
    addi sp, sp, -24        # Allocate stack space
                            # sp = @sp - 28
    sw ra, 20(sp)           # @ra -> MEM[@sp - 8]
    sw t4, 16(sp)           # t4 -> MEM[@sp - 12]
    sw t3, 12(sp)           # t3 -> MEM[@sp - 16]
    sw t2, 8(sp)            # t2 -> MEM[@sp - 20]
    sw t1, 4(sp)            # t1 -> MEM[@sp - 24]
    sw t0, 0(sp)            # t0 -> MEM[@sp - 28]
    
    # Pass Arguments
    mv a0, a0               # a0 = address of first data   
    mv a1, t3               # a1 = start
    mv a2, t0               # a2 = mid
    mv a3, t4               # a3 = end
    
    # Jump to Callee
    jal ra, Merge           # ra = Addr(lw ra, 20(sp))
    
    ## Retrieve Caller Saved
    lw ra, 20(sp)           # ra = MEM[@sp - 28]
    lw t4, 16(sp)           # t4 = MEM[@sp - 24]
    lw t3, 12(sp)           # t3 = MEM[@sp - 20]
    lw t2, 8(sp)            # t2 = MEM[@sp - 16]
    lw t1, 4(sp)            # t1 = MEM[@sp - 12]
    lw t0, 0(sp)            # t0 = MEM[@sp - 8]
    addi sp, sp, 24         # sp = @sp - 4
    #######################################################
    
Done3:
    lw ra, 0(sp)            # ra = @ra
    addi sp, sp, 4          # sp = @sp
    ret                     # return
    
Merge:
    ###########################################################
    # < Function >
    #    merge
    # < Parameters >
    #    a0 : address of first data
    #    a1 : start
    #    a2 : mid
    #    a3 : end
    # < Return Value>
    #    NULL
    ###########################################################
    # < local Variable>
    #    s1 : temp_size
    #    s2 : *arr
    #    s3 : offset of index
    #    s4 : offset of index
    #    s5 : temp[left_index]
    #    s6 : temp[right_index]
    #    t0 : counter(i)
    #    t1 : left_index
    #    t2 : right_index
    #    t3 : left_max
    #    t4 : right_max
    #    t5 : arr_index
    #    t6 : temp
    ###########################################################            

    # ra and Callee saved 
    addi sp, sp, -24        # Allocate stack space
                            # sp = @sp - 24
    sw s6, 20(sp)           # @s3 = MEM[@sp - 4]
    sw s5, 16(sp)           # @s3 = MEM[@sp - 8]
    sw s4, 12(sp)           # @s3 = MEM[@sp - 12]
    sw s3, 8(sp)            # @s3 = MEM[@sp - 16]
    sw s2, 4(sp)            # @s2 = MEM[@sp - 20]
    sw s1, 0(sp)            # @s1 = MEM[@sp - 24]
    
    # get temp_size
    mv s1, a3               # s1 = end 
    sub s1, s1, a1          # s1 = end - start
    addi s1, s1, 1          # s1 = end - start + 1 = temp_size
    
    # get temp_size space
    slli t6, s1, 2          # t6 = temp_size * 4 (bytes of temp_size)
    sub sp, sp, t6          # Allocate stack space for temp[]
                            # sp = @sp - 16 - t6
    # initialize
    mv t0, x0               # t0 = 0 = i
    mv s2, a0               # s2 = address of *arr 
    
Loop4:
    # for(int i = 0; i < temp_size ; i++)
    blt t0, s1, Keep        # if(i < temp_size), go to Keep
    j Initialize            # else go to Initialize
    
Keep:   
    # t6 = arr[i+start]
    add t6, t0, a1          # t6 = t0(i) + a1(start)
    slli s3, t6, 2          # s3 = t6 << 2 (offset of index)
    add s2, s2, s3          # s2 = s2 + s3 (s2 = *arr[i+start])
    lw t6, 0(s2)            # t6 = MEM[s2]
    sub s2, s2, s3          # s2 = s2 - s3 (s2 = *arr[0])
    
    # s4 = bit of index 
    slli s4, t0, 2          # s4 = t0(i) << 2
    add sp, sp, s4          # sp = @sp - 16 - t6 + s4 (sp = *temp[i])
    
    # temp[i] = arr[i+start]
    sw t6, 0(sp)            # t6 -> MEM[sp] 
    sub sp, sp, s4          # sp = @sp - 16 - t6 (sp = *temp[0])
    j Next2                 # jump to Next2
Next2:
    addi t0, t0, 1          # i++
    j Loop4                 # jump to Loop4
    
    
Initialize:
    ## initialize variable
    # left_index = 0
    mv t1, x0               # t1 = 0
        
    # right_index = mid-start+1
    mv t2, a2               # t2 = mid
    sub t2, t2, a1          # t2 = mid - start
    addi t2, t2, 1          # t2 = mid - start + 1
    
    # left_max = mid-start
    addi t3, t2, -1         # t3 = mid - start
    
    # right_max = end-start
    mv t4, a3               # t4 = end
    sub t4, t4, a1          # t4 = end - start
     
    # arr_index = start
    mv t5, a1               # t5 = start
    
while1st:
    ## while(left_index <= left_max && right_index <= right_max)
WT1_1:
    ble t1, t3, WT1_2       # if(left_index <= left_max),go to WT1_2 
    j while2nd              # else go to while2nd
    
WT1_2:
    ble t2, t4, WT1_func    # if(right_index <= right_max),go to WT1_func
    j while2nd              # else go to while2nd        
    
WT1_func:
    ## s5 = temp[left_index]
    slli s3, t1, 2          # s3 = t1 << 2 (offset of left_index)
    add sp, sp, s3          # sp = sp + s3 (sp = *temp[left_index])
    lw s5, 0(sp)            # s5 = MEM[sp] (s5 = temp[left_index])
    sub sp, sp, s3          # sp = sp - s3 (sp = *temp[0])
    
    ## s6 = temp[right_index]
    slli s4, t2, 2          # s4 = t2 << 2 (offset of right_index)
    add sp, sp, s4          # sp = sp + s4 (sp = *temp[right_index])
    lw s6, 0(sp)            # s6 = MEM[sp] (s6 = temp[right_index])
    sub sp, sp, s4          # sp = sp - s4 (sp = *temp[0])
    
    ble s5, s6, WT1if       # if(temp[left_index] <= temp[right_index]),go to WT1if
    j WT1else               # else go to WT1else
    
WT1if:
    slli s3, t5, 2          # s3 = t5 << 2 (offset of arr_index)
    add s2, s2, s3          # s2 = s2 + s3 (s2 = *arr[arr_index])
    sw s5, 0(s2)            # s5 -> MEM[s2] (arr[arr_index] = temp[left_index])
    sub s2, s2, s3          # s2 = s2 - s3 (s2 = *arr[0])
    addi t5, t5, 1          # arr_index++
    addi t1, t1, 1          # left_index++
    j while1st              # jump to while1st
    
WT1else:  
    slli s3, t5, 2          # s3 = t5 << 2 (offset of arr_index)
    add s2, s2, s3          # s2 = s2 + s3 (s2 = *arr[arr_index])
    sw s6, 0(s2)            # s6 -> MEM[s2] (arr[arr_index] = temp[right_index])
    sub s2, s2, s3          # s2 = s2 - s3 (s2 = *arr[0])
    addi t5, t5, 1          # arr_index++
    addi t2, t2, 1          # right_index++
    j while1st              # jump to while1st

while2nd:
    ble t1, t3, WT2_func    # if(left_index <= left_max), go to WT2_func
    j while3rd              # else go to while3rd
    
WT2_func:
    ## s5 = temp[left_index]
    slli s3, t1, 2          # s3 = t1 << 2 (offset of left_index)
    add sp, sp, s3          # sp = sp + s3 (sp = *temp[left_index])
    lw s5, 0(sp)            # s5 = MEM[sp] (s5 = temp[left_index])
    sub sp, sp, s3          # sp = sp - s3 (sp = *temp[0])
    
    ## arr[arr_index] = temp[left_index];
    slli s3, t5, 2          # s3 = t5 << 2 (offset of arr_index)
    add s2, s2, s3          # s2 = s2 + s3 (s2 = *arr[arr_index])
    sw s5, 0(s2)            # s5 -> MEM[s2] (arr[arr_index] = temp[left_index])
    sub s2, s2, s3          # s2 = s2 - s3 (s2 = *arr[0])
    addi t5, t5, 1          # arr_index++
    addi t1, t1, 1          # left_index++
    j while2nd              # jump to while2nd

while3rd:
    ble t2, t4, WT3_func    # if(right_index <= right_max), go to WT3_func
    j Done4                 # else go to Done4
    
WT3_func:
    ## s6 = temp[right_index]
    slli s4, t2, 2          # s4 = t3 << 2 (bits of right_index)
    add sp, sp, s4          # sp = sp + s4 (sp = *temp[right_index])
    lw s6, 0(sp)            # s6 = MEM[sp] (s6 = temp[right_index])
    sub sp, sp, s4          # sp = sp - s4 (sp = *temp[0])
    ## arr[arr_index] = temp[right_index]
    slli s3, t5, 2          # s3 = t5 >> 2 (bits of arr_index)
    add s2, s2, s3          # s2 = s2 + s3 (s2 = *arr[arr_index])
    sw s6, 0(s2)            # s5 -> MEM[s2] (arr[arr_index] = temp[right_index])
    sub s2, s2, s3          # s2 = s2 - s3 (s2 = *arr[0])
    addi t5, t5, 1          # arr_index++
    addi t2, t2, 1          # right_index++
    j while3rd              # jump to while3rd

Done4:
    # get temp_size space
    slli t6, s1, 2          # t6 = temp_size * 4 (bytes of temp_size)
    add sp, sp, t6          # sp = @sp - 16
    lw s6, 20(sp)            # s1 = @s1
    lw s5, 16(sp)            # s1 = @s2
    lw s4, 12(sp)            # s1 = @s3
    lw s3, 8(sp)            # s1 = @s3
    lw s2, 4(sp)            # s1 = @s3
    lw s1, 0(sp)            # s1 = @s3
    addi sp, sp, 24         # sp = @sp
    ret                     # return

# ######################################


main_exit:

# ######################################
# ### Return to end the simulation
# ######################################

  lw s0, 0(sp)
  addi sp, sp, 4
  ret

# ######################################

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
  la s0, _answer

# ######################################


# ######################################
# ### Main Program
# ######################################
    #######################################################
    # < Function >
    #    main procedure
    #
    # < Parameters >
    #    NULL
    #
    # < Return Value >
    #    NULL
    #######################################################
    # < Local Variable >
    #    s0 : num_test
    #    s1 : *size
    #    s2 : *test
    #    s3 : *answer
    #    t0 : i
    #    t1 : test_size
    #    t2 : j
    #    t3 : test[j]
    #######################################################
    
    ## Save ra & Callee saved
    addi sp, sp, -20            # Allocate stack space
                                # sp = @sp - 16
    sw ra, 16(sp)               # @ra -> MEM[@sp - 4]
    sw s3, 12(sp)               # @s3 -> MEM[@sp - 8]
    sw s2, 8(sp)                # @s2 -> MEM[@sp - 12]
    sw s1, 4(sp)                # @s1 -> MEM[@sp - 16]
    sw s0, 0(sp)                # @s0 -> MEM[@sp - 20]
    
    ## Get num_test, *test, *answer
    lw s0, num_test             # s0 = num_test
    li s1, 0x8004               # s1 = (*size) 
    slli s2, s0, 2              # s2 = num_test * 4  
    add s2, s2, s1              # s2 = *(test) = 0x10000004 + num_test  
    li s3, 0x9000               # s3 = (*answer) 
    
    ###############        i_for_loop       ###############
    ## initialize i = 0
    li t0, 0                    # i = 0
    
    bge t0, s0, main_i_loop_exit       # if(i >= num_test) go to exit
    
main_i_for_loop:
    ## Get test data (test_size)
    lw t1, 0(s1)                # test_size = *(size)
    addi s1, s1, 4              # size++
    ############### Call Function Procedure ###############
    ## Caller Saved
    addi sp, sp, -8             # Allocate stack space
                                # sp = @sp - 8    
    sw t1, 4(sp)                # @t1 -> MEM[@sp - 4]                            
    sw t0, 0(sp)                # @t0 -> MEM[@sp - 8]
    
    ## Pass arguement
    mv a0, s2                   # a0 = s2 = test
    mv a1, x0                   # a1 = 0 
    addi t1, t1, -1             # t1 = test_size - 1
    mv a2, t1                   # a2 = t1 = test_size - 1
     
    ## Jump to Callee
    jal ra, MERGESORT
    #######################################################
    
    ## Retrieve Caller Saved
    lw t1, 4(sp)                # t1 = test_size
    lw t0, 0(sp)                # t0 = i
    addi sp, sp, 8              # Release stack space
    
    ###############        j_for_loop       ###############
    ## initialize j = 0
    li t2, 0                    # j = 0
    bge t2, t1, main_j_loop_exit       # if(j >= test_size) go to exit 
    
main_j_for_loop:
    lw t3, 0(s2)                # t3 = *test
    sw t3, 0(s3)                # *(answer) = t3 = *test
    addi s3, s3, 4              # answer++
    addi s2, s2, 4              # test++    
    
    ## condition check (j < test_size)
    addi t2, t2, 1              # j++
    blt t2, t1, main_j_for_loop # if (j < test_size) go loop again
    
    ###############    end_of_j_for_loop    ###############  
main_j_loop_exit:
    ## condition check (i < num_test)
    addi t0, t0, 1              # i++
    blt t0, s0, main_i_for_loop # if (i < num_test) go loop again
    
    ###############    end_of_i_for_loop    ###############     
main_i_loop_exit:
    ## Retrieve ra & Retrieve Callee Saved
    lw ra, 16(sp)               # ra = @ra
    lw s3, 12(sp)               # s3 = @s3
    lw s2, 8(sp)                # s2 = @s2
    lw s1, 4(sp)                # s1 = @s1
    lw s0, 0(sp)                # s0 = @s0
    addi sp, sp, 20             # Release stack space
    
    ## return
    jal x0, main_exit
    
MERGESORT:
    #######################################################
    # < Function >
    #    mergesort 
    #
    # < Parameters >
    #    a0 : *arr
    #    a1 : start
    #    a2 : end
    # < Return Value >
    #    no return value (void)
    #######################################################
    # < Local Variable >
    #    t0 : mid
    #######################################################
        
    ## Save ra & Callee Saved
    # No use saved registers -> No need to do Callee Saved
    addi sp, sp, -4             # Allocate stack space
                                # sp = @sp - 4
    sw ra, 0(sp)                # @ra -> MEM[@sp - 4]
    
    ## if
    bge a1, a2, else            # if(start >= end) don't go if    
if:
    add t0, a1, a2              # mid = start + end
    srai t0, t0, 1              # mid = (start + end) / 2 
     
    ############### Call Function Procedure ###############
    ## Caller Saved
    addi sp, sp, -16            # Allocate stack space
                                # sp = @sp - 16    
    sw a2, 12(sp)               # @a2 -> MEM[@sp - 4]                            
    sw a1, 8(sp)                # @a1 -> MEM[@sp - 8]
    sw a0, 4(sp)                # @a0 -> MEM[@sp - 12]
    sw t0, 0(sp)                # @t0 -> MEM[@sp - 16]
    
    ## Pass arguement
    mv a0, a0                   # a0 = arr
    mv a1, a1                   # a1 = start 
    mv a2, t0                   # a2 = mid
     
    ## Jump to Callee
    jal ra, MERGESORT
    #######################################################
    
    ## Retrieve Caller Saved
    lw a2, 12(sp)               # a2 = @a2
    lw a1, 8(sp)                # a1 = @a1
    lw a0, 4(sp)                # a0 = @a0
    lw t0, 0(sp)                # t0 = @t0
    addi sp, sp, 16              # Release stack space 
    
    ############### Call Function Procedure ###############
    ## Caller Saved
    addi sp, sp, -16            # Allocate stack space
                                # sp = @sp - 16    
    sw a2, 12(sp)               # @a2 -> MEM[@sp - 4]                            
    sw a1, 8(sp)                # @a1 -> MEM[@sp - 8]
    sw a0, 4(sp)                # @a0 -> MEM[@sp - 12]
    sw t0, 0(sp)                # @t0 -> MEM[@sp - 16]
    
    ## Pass arguement
    mv a0, a0                   # a0 = arr
    addi a1, t0, 1              # a1 = mid + 1 
    mv a2, a2                   # a2 = end
     
    ## Jump to Callee
    jal ra, MERGESORT
    #######################################################
    
    ## Retrieve Caller Saved
    lw a2, 12(sp)               # a2 = @a2
    lw a1, 8(sp)                # a1 = @a1
    lw a0, 4(sp)                # a0 = @a0
    lw t0, 0(sp)                # t0 = @t0
    addi sp, sp, 16             # Release stack space
    
    ############### Call Function Procedure ###############
    ## Caller Saved
    ## no caller saved register will be use, no need to save
    
    ## Pass arguement
    mv a0, a0                   # a0 = @a0
    mv a1, a1                   # a1 = start 
    mv a3, a2                   # a3 = end
    mv a2, t0                   # a2 = mid 
    
    ## Jump to callee
    jal ra, MERGE
    #######################################################
    
    ## Retrieve Caller Saved
    ## No need to retrieve
else:
    ## Retrieve ra & Callee Saved
    lw ra, 0(sp)                # ra = @ra
    addi sp, sp, 4              # Release stack space
    
    ## return
    ret
    
MERGE:
    #######################################################
    # < Function >
    #    merge 
    #
    # < Parameters >
    #    a0 : *arr
    #    a1 : start
    #    a2 : mid
    #    a3 : end
    # < Return Value >
    #    no return value (void)
    #######################################################
    # < Local Variable >
    #    s0 : i
    #    s1 : temp_size
    #    t0 : temporary_number_1
    #    t1 : temporary_number_2
    #    t2 : left_index
    #    t3 : right_index
    #    t4 : left_max
    #    t5 : right_max
    #    t6 : arr_index
    #######################################################
    
    ## Save ra & Callee Saved
    addi sp, sp, -12            # Allocate stack space
                                # sp = @sp - 12
    sw ra, 8(sp)                # @ra -> MEM[@sp - 4]
    sw s1, 4(sp)                # @s1 -> MEM[@sp - 8]
    sw s0, 0(sp)                # @s0 -> MEM[@sp - 12]
    
    sub s1, a3, a1              # temp_size = end - start
    addi s1, s1, 1              # temp_size = end - start + 1 
    slli t0, s1, 2              # t0 = temp_size * 4
    sub sp, sp, t0              # sp = @sp - temp_size * 4
     
    ## initialize i = 0
    li s0, 0                    # i = 0
    bge s0, t0, loop_exit       # if(i >= temp_size) go to exit
    
for_loop:
    slli t0, s0, 2              # t0 = i * 4
    add t0, sp, t0              # t0 = sp + i * 4  
    add t1, s0, a1              # t1 = i + start  
    slli t1, t1, 2              # t1 = (i + start) * 4  
    add t1, t1, a0              # t1 = *arr + (i + start) * 4
    lw t1, 0(t1)                # t1 = arr[i + start]
    sw t1, 0(t0)                # temp[i] = arr[i + start]
    
    ##condition check
    addi s0, s0, 1              # i++
    blt s0, s1, for_loop        # if (i < temp_size) go loop again
    
loop_exit:
    li t2, 0                    # left_index = 0
    sub t3, a2, a1              # right_index = mid - start
    addi t3, t3, 1              # right_index = mid - start + 1
    sub t4, a2, a1              # left_max = mid - start
    sub t5, a3, a1              # right_max = end - start
    mv t6, a1                   # arr_index = start
    
    bgt t2, t4, while_1_exit    # if(left_index > left_max) exit while_1
    bgt t3, t5, while_1_exit    # if(right_index > right_max) exit while_1 
while_1:
    slli t0, t2, 2              # t0 = left_index * 4
    add t0, sp, t0              # t0 = *temp + left_index * 4
    lw t0, 0(t0)                # t0 = temp[left_index]
    slli t1, t3, 2              # t1 = right_index * 4
    add t1, sp, t1              # t1 = *temp + right_index * 4
    lw t1, 0(t1)                # t1 = temp[right_index]      
    ble t0, t1, merge_if        # if (temp[left_index] <= temp[right_index]) go if
merge_else:
    slli t0, t6, 2              # t1 = arr_index * 4
    add t0, a0, t0              # t1 = *arr + arr_index * 4
    ## t1 now is temp[right_index]
    sw t1, 0(t0)                # arr[arr_index] = temp[right_index]
    addi t6, t6, 1              # arr_index++
    addi t3, t3, 1              # right_index++
    jal x0, merge_if_else_exit  # exit if_else
merge_if:
    slli t1, t6, 2              # t1 = arr_index * 4
    add t1, a0, t1              # t1 = *arr + arr_index * 4
    ## t0 now is temp[left_index]
    sw t0, 0(t1)                # arr[arr_index] = temp[left_index]
    addi t6, t6, 1              # arr_index++
    addi t2, t2, 1              # left_index++  
merge_if_else_exit:
    bgt t2, t4, while_1_exit    # if(left_index > left_max) exit while_1
    ble t3, t5, while_1         # if(left_index <= left_max && right_index <= right_max) while_1 again  
while_1_exit:
    bgt t2, t4, while_2_exit    # if(left_index > left_max) exit while_2
while_2:
    slli t0, t6, 2              # t0 = arr_index * 4
    add t0, a0, t0              # t0 = *arr + arr_index * 4
    slli t1, t2, 2              # t1 = left_index * 4
    add t1, t1, sp              # t1 = sp + left_index * 4
    lw t1, 0(t1)                # t1 = temp[left_index]
    sw t1, 0(t0)                # arr[arr_index] = temp[left_index]
    addi t6, t6, 1              # arr_index++
    addi t2, t2, 1              # left_index++      
    
    ## condition check
    ble t2, t4, while_2         # if(left_index <= left_max) while_2 again
while_2_exit:
    bgt t3, t5, while_3_exit    # if(right_index > right_max) exit while_3
while_3:
    slli t0, t6, 2              # t0 = arr_index * 4
    add t0, a0, t0              # t0 = *arr + arr_index * 4
    slli t1, t3, 2              # t1 = right_index * 4
    add t1, t1, sp              # t1 = sp + right_index * 4
    lw t1, 0(t1)                # t1 = temp[right_index]
    sw t1, 0(t0)                # arr[arr_index] = temp[right_index]
    addi t6, t6, 1              # arr_index++
    addi t3, t3, 1              # right_index++
    
    ## condition check
    ble t3, t5, while_3         # if(right_index <= right__max) while_3 again 
while_3_exit:
    ## Release stack space
    slli t0, s1, 2              # t0 = temp_size * 4
    add sp, sp, t0              # sp = @sp + temp_size * 4
    
    ## Retrieve Caller Saved
    lw ra, 8(sp)                # ra = @ra
    lw s1, 4(sp)                # s1 = @s1
    lw s0, 0(sp)                # s0 = @s0
    addi sp, sp, 12             # release stack space
    
    ## return
    ret

# ######################################


main_exit:

# ######################################
# ### Return to end the simulation
# ######################################

  lw s0, 0(sp)
  addi sp, sp, 4
  ret

# ######################################

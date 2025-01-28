# c-based language code: 
# a = AR1[0]
# c = a + b - 5 
# AR2[1] = c 

# $s0 to hold AR1 
# $s1 to hold AR2 
# $s2 to hold b 
# $t0 to hold a 
# $t1 to hld "a+b" intermediate calculation
# $t2 to hold the value of c 

    .data
# to do: populate some value for b into $s2

    .text 
main:
    lw $t0, 0($s0)          # AR1[0] -> a 
    add $t1, $t0, $s2       # a + b -> temp 
    addi $t2, $t1, -5       # temp - 5 -> c 
    sw $t2, 32 $s1)         # c -> AR2[1] 


    li $v0, 10 
    syscall 

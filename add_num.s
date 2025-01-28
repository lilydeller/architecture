  
    .data
# put constants here 
newline: .asciiz "\n"

    .text
# runnable code begins here

main:

    li $s0, 7       # a = 7
    li $s1, 19      # b = 19 
    addu $s2, $s0, $s1 # c = a + b 

    # get ready to print 
    move $a0, $s2   # copy c over to where SPIM can reach it (argument) 
    li $v0, 1       # load the value 1 into register (function id) 
                    # function "1" means print an int
    syscall         # do it 

    # get ready to print a string 
    la $a0, newline # load "\n" ubti $a0 where SPIM can read it (argument)
    li $v0, 4       # load the value "4" into register $v0 which means print a string 
    syscall         # do it / execute 

    li $v0, 10      # load the value "10" into the register $v0
                    # the value "10" means exit program
    syscall         # execute ? run ?



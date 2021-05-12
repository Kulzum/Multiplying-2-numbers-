//Program: Mult.asm
// Computes product of R0*R1 and stores it in R2

@R2
M=0
@i
M=0

(LOOP)

    // condition
    @i
    D=M
    @R1
    D=D-M
    // if condition is true, end the loop
    @END
    D;JEQ

     //decrement/increment of the loop counter
    @i
    M = M + 1


    //add R0 to R2
    @R0
    D = M
    @R2
    M = M + D
    @LOOP
    0;JMP

    //unconditional jump to start of the loop
(END)
@END
0;JMP

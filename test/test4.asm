/PDP-8 test4.asm prints out I LOVE PDP-8 :) 
*200
START,  AIX1=10
        CLA CLL
        TAD MDATA
        DCA AIX1
PREP,   NOP
        TAD I AIX1
        SNA
        JMP I [7600
        JMS TYPE
        JMP PREP
TYPE,   0
        TLS
        TSF
        JMP .-1
        CLA CLL
        JMP I TYPE
MDATA,  .
        311     /I
        240     /space
        314     /L
        317     /O
        326     /V
        305     /E
        240     /space
        320     /P
        304     /D
        320     /P
        255     /-
        270     /8
        240     /space
        272     /:
        251     /)
        000

/PDP-8 test5.asm just printing 0-7777
*200
START,  CLA CLL
        TLS
NEXT,   TAD COTP
        JMS TYPE
        ISZ COTP
        JMP NEXT
        HLT
TYPE,   0
        TSF
        JMP .-1
        TLS
        CLA CLL
        JMP I TYPE
COTP,   0

/PDP-8 asm test code
*200
OUTPUT, CLA CLL
        TLS
        TAD HOLD
        JMS TYPE
        JMP I [7600 /Exit program
TYPE,   0
        TSF
        JMP .-1
        TLS
        CLA CLL
        JMP I TYPE
HOLD,   0

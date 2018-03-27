/PDP-8 asm test code input and output of a single character
*200
INPUT,  KCC
        JMS LISN
        DCA HOLD
        JMP OUTPUT
LISN,   0
        KSF
        JMP .-1
        KRB
        JMP I LISN
OUTPUT, 0
        CLA CLL
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

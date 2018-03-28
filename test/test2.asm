/PDP-8 test2.asm key buffer test
*200
START,  CLA CLL
        TAD BUFF
        DCA BUFFPT
INPUT,  KCC
        JMS LISN
        DCA HOLD
        JMP OUTPUT
LISN,   0
        KSF
        JMP .-1
        KRB
        TLS
        DCA I BUFFPT
        TAD I BUFFPT
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
BUFF,   2000
BUFFPT, 0
K215,   215

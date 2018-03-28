/PDP-8 test3.asm just some midi data
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
        220     /cmd
        36      /pitch
        105     /velocity
        000

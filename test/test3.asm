/PDP-8 test3.asm just some midi data as ascii to pars
*200
START,  CLA CLL
        TLS
        TAD MDATA
        DCA AIX1
        TAD M6
        DCA COUNT
NEXT,   TAD I AIX1
        JMS TYPE
        ISZ COUNT
        JMP NEXT
        JMP I [7600
TYPE,   0
        TSF
        JMP .-1
        TLS
        CLA CLL
        JMP I TYPE
MDATA,  .
        274     /<
        271     /x90 cmd
        260     /
        241     /! 
        262     /x24 pitch
        264     /
        241     /!
        266     /x64 velocity
        264     /
        276     />
        274     /<
        270     /x80 cmd
        260     /
        241     /!
        262     /x24 pitch
        264     /
        241     /!
        260     /x00 velocity
        260     /
        276     />
        000
M6,     -25
COUNT,  0
AIX1=10

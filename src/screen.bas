01 REM PRINT a message to a specific x,y location
10 X=10
20 Y=10
30 POKE 214,X:POKE 211,Y:SYS 58732:PRINT "A MESSAGE"
39 REM POKE a single char to a location (1024-2023)
40 C="M"
40 POKE 1531,C

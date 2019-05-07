10 REM PRINT a message to a specific x,y location
20 X=10 : Y=10
30 POKE 214,X:POKE 211,Y:SYS 58732:PRINT "A MESSAGE"
40 REM POKE a single char (byte) to a location (1024-2023)
50 C=77
60 POKE 1531,C

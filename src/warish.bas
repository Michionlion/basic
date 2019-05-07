1 REM FINAL PROJECT FOR BASIC INDEPENDENT STUDY
2 REM INSPIRED BY THE CARD GAME "WAR", BUT SLIGHTLY BETTER
3 X=RND(-TIME) : PP%=0 : CP%=0 : RN%=1 : TP%=10
10 PRINT TAB(17);"WARISH!" : PRINT ""
20 PRINT TAB(8);"BY SAEJIN MAHLAU-HEINERT" : PRINT ""
30 GOSUB 1000
40 INPUT "ARE YOU READY TO PLAY"; A$
50 IF A$="YES" THEN 100
60 IF A$="Y" THEN 100
70 IF A$="yes" THEN 100
80 IF A$="y" THEN 100
90 PRINT "OKAY, MAYBE NEXT TIME!" : END
100 REM START OF GAME LOOP
110 GOSUB 1800
120 PRINT "YOU NOW HAVE";PP%;"POINTS."
130 PRINT "CPU NOW HAS";CP%;"POINTS."
140 PRINT "" : PRINT ""
150 IF PP%>=TP% THEN 180
160 IF CP%>=TP% THEN 190
170 GOTO 100
180 PRINT "YOU HAVE WON THE GAME!" : GOTO 2000
190 PRINT "THE CPU HAS WON THE GAME." : GOTO 2000
1000 REM SUBROUTINE - PRINT HELP INSTRUCTIONS
1010 PRINT "-- RULES --"
1020 PRINT "ALL CARDS HAVE A NUMBER (1-6) AND A"
1030 PRINT "COLOR (RED OR BLUE). YOU AND CPU WILL BE"
1040 PRINT "GIVEN TWO RANDOM CARDS EACH. YOU MUST"
1050 PRINT "EACH CHOOSE ONE AND PLAY IT. IF THE"
1060 PRINT "CARDS HAVE THE SAME COLORS, THE HIGHER"
1070 PRINT "CARD'S PLAYER GETS TWO POINTS, AND THE"
1080 PRINT "LOSER LOSES A POINT. IF THE CARDS HAVE"
1090 PRINT "DIFFERENT COLORS, THE LOWER CARD'S"
1100 PRINT "PLAYER GETS A POINT. A TIE RESULTS IN NO"
1110 PRINT "POINTS FOR EITHER PLAYER. THE GAME ENDS"
1120 PRINT "WHEN A PLAYER REACHES";TP%;"POINTS."
1130 PRINT "-- -- -- --" : PRINT ""
1199 RETURN
1200 REM SUBROUTINE - GET A PLAYER CARD
1210 N1%=INT(RND(1)*6)+1 : C1%=INT(RND(2)*2)
1220 N2%=INT(RND(3)*6)+1 : C2%=INT(RND(4)*2)
1230 IF C1%=0 THEN C1$="RED"
1240 IF C1%=1 THEN C1$="BLUE"
1250 IF C2%=0 THEN C2$="RED"
1260 IF C2%=1 THEN C2$="BLUE"
1270 PRINT "YOU HAVE TWO CARDS:"
1280 PRINT "YOUR FIRST CARD IS A " C1$; N1%
1290 PRINT "YOUR SECOND CARD IS A " C2$; N2%
1300 INPUT "CARD 1 OR 2"; CH$
1310 IF CH$="1" THEN 1340
1320 IF CH$="2" THEN 1350
1330 PRINT "ENTER ONLY '1' OR '2'" : GOTO 1270
1340 PN%=N1% : PC$=C1$ : GOTO 1360
1350 PN%=N2% : PC$=C2$
1360 PRINT "" : PRINT "YOU PLAYED A " PC$; PN%
1399 RETURN
1400 REM SUBROUTINE - GET A COMPUTER CARD
1410 N1%=INT(RND(5)*6)+1 : C1%=INT(RND(6)*2)
1420 N2%=INT(RND(7)*6)+1 : C2%=INT(RND(8)*2)
1430 CH%=INT(RND(9)*2)
1440 IF CH=0 THEN 1460
1450 IF CH=1 THEN 1470
1460 CN%=N1% : CC%=C1% : GOTO 1480
1470 CN%=N2% : CC%=C2%
1480 IF CC%=0 THEN CC$="RED" : GOTO 1500
1490 IF CC%=1 THEN CC$="BLUE"
1500 PRINT "CPU PLAYED A " CC$; CN%
1599 RETURN
1600 REM SUBROUTINE - CARD COMPARISON
1610 RW%=0 : REM DEFAULT TO TIE
1620 IF PC$=CC$ THEN 1670 : REM IF COLORS ARE EQUAL, GO TO 1670
1630 IF PN%<CN% THEN 1650
1640 IF CN%<PN% THEN 1660
1645 GOTO 1710 : REM IT'S A TIE
1650 RW%=1 : PP%=PP%+1 : GOTO 1710
1660 RW%=2 : CP%=CP%+1 : GOTO 1710
1670 IF PN%>CN% THEN 1690
1680 IF CN%>PN% THEN 1700
1685 GOTO 1710 : REM IT'S A TIE
1690 RW%=1 : PP%=PP%+2 : CP%=CP%-1 : GOTO 1710
1700 RW%=2 : CP%=CP%+2 : PP%=PP%-1 : GOTO 1710
1710 IF PP%<0 THEN PP%=0
1720 IF CP%<0 THEN CP%=0
1799 RETURN
1800 REM SUBROUTINE - PLAY A RN
1810 PRINT "ROUND";RN% : PRINT "---"
1820 GOSUB 1200 : GOSUB 1400 : PRINT ""
1830 GOSUB 1600
1840 IF RW%=1 THEN 1880
1850 IF RW%=2 THEN 1890
1860 PRINT "THIS ROUND WAS A TIE."
1870 GOTO 1900
1880 PRINT "YOU WON THIS ROUND!" : GOTO 1900
1890 PRINT "CPU WON THIS ROUND."
1900 RN%=RN% + 1
1910 PRINT ""
1999 RETURN
2000 PRINT "THANKS FOR PLAYING!" : END

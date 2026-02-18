100 REM Project Starflight 
105 DIM FLEET$ ( 10 ) 
106 DIM PLANET$ ( 10 ) 
107 DIM STAR$ ( 10 ) 
110 GOSUB 8120 
120 PRINT "Do you need instructions? (y/n)" 
122 PRINT 
125 INPUT ANS$ 
126 TRNS = 0 : REM number of transits 
130 IF ANS$ = "y" OR ANS$ = "Y" THEN GOSUB 900 
500 PRINT "Welcome Captain. Please sign in with your name." 
520 INPUT CAPT$ 
540 PRINT "Captain " + CAPT$ + " we're reviewing ships available." 
560 ASN = 1 + INT ( 9 * RND ( 1 ) + .5 ) 
580 ENM = 1 + INT ( 9 * RND ( 1 ) + .5 ) 
581 IF ENM = ASN THEN GOTO 580 
582 PRINT "ENM: " + STR$ ( ENM ) 
620 STR = 1 + INT ( 9 * RND ( 1 ) + .5 ) 
640 ESTR = 1 + INT ( 9 * RND ( 1 ) + .5 ) 
660 IF ESTR = STR THEN GOTO 640 
680 PRINT "You are now in command of " + FLEET$ ( ASN ) + "." 
700 PRINT "Your mission is to travel from " + STAR$ ( STR ) + " to " + STAR$ ( ESTR ) 
705 PRINT "where the target ship " + FLEET$ ( ENM ) + " is reported to be" 
720 PRINT "crashed on " + PLANET$ ( ESTR ) + "." 
721 PRINT 
725 REM PILOT LOOP
726 PRINT "Current tramline exits are:" 
727 PRINT "--------------------------------" 
730 FOR T = 1 TO 3 
735 PRINT STR$ ( T ) + ": " + STAR$ ( EXT ( STR , T ) ) 
740 NEXT T 
745 PRINT 
755 PRINT "Choose your tramline" 
756 INPUT Tr
770 STR = EXT ( STR , Tr ) 
780 IF STR = ESTR THEN GOTO 785
781 goto  725
785 PRINT "Congratulations! You have rescued " + FLEET$ ( ENM ) + "!" 
800 STOP 
900 PRINT "You are commanding a rescue ship that is tasked" 
920 PRINT "with finding a ship that has crashed in a remote system." 
940 PRINT "Each star sytem has at least 3 tramlines to other star systems." 
960 PRINT "Your job is to pilot your ship until you can reach the " 
980 PRINT "lost ship."
982 PRINT "                   Good luck." 
985 PRINT  
1000 RETURN 
8120 FOR I = 1 TO 10 
8125 READ SHIP$ 
8126 FLEET$ ( I ) = SHIP$ 
8127 NEXT I 
8220 FOR I = 1 TO 10 
8225 READ PL$ 
8226 PLANET$ ( I ) = PL$ 
8227 NEXT I 
8231 FOR I = 1 TO 10 
8235 READ ST$ 
8236 STAR$ ( I ) = ST$ 
8237 NEXT I 
8300 DIM EXT ( 10 , 3 ) 
8310 FOR I = 1 TO 10 
8315 FOR T = 1 TO 3 
8320 E = 1 + INT ( RND ( 1 ) * 9 + .5 ) 
8325 IF E = I THEN GOTO 8320 
8330 EXT ( I , T ) = E 
8335 NEXT T 
8340 NEXT I 
8900 RETURN 
9000 DATA "Adventurer" , "Omen" , "The Jellyfish" , "Saber" , "Hellhound" , "SC Providence" , "CS Shade" , "BS Khan" , "SS Andromeda" , "BS Nuria" 
9020 DATA "ticcoclite" , "ninriecarro" , "odruna" , "itrolla" , "eabos" , "legantu" , "bratinides" , "craculara" , "trilles 992" , "cone YK3P" 
9040 DATA "ezlaoct" , "sroi" , "otaeks" , "poaph" , "ameag" , "naithef" , "ekuasims" , "sehle" , "ikreglault" , "baeccays" 

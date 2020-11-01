@echo off
setlocal EnableDelayedExpansion
title T‚tris
mode con cols=77 lines=36
 
 :: programme crée par Sam4AF

 Rem ---------------------- Copyright ----------------------------------

 :: Code par Bad-Code, ne pas copier, modifier, distribuer ce code sans mon autorisation
 :: Ne pas supprimer ce Copyright, merci.:-)
 :: commandes externes utilisés :
 :: Batbox ---- Code de génération à la fin du script - Darkbatcher

 Rem ---------------------- Copyright ----------------------------------
 
 
 REM Variable programme
 set "bb=call :algobatbox"
 set "$allbb="
 set "$tempbb="
 
 If not exist "%~dp0Fichiers Tetris" md "%~dp0Fichiers Tetris"
 cd "%~dp0Fichiers Tetris"
 If not exist batbox.exe call :batbox
 If not exist Score.txt echo 2720/Bad-Code>Score.txt
 

 rem -------------------------------------------------------------------------------------------------------------------------
 
 cls
 
 batbox /h 0
 batbox /g 33 1 /c 0x0C /d "T" /c 0x03 /d " E" /c 0x02 /d " T" /c 0x0E /d " R" /c 0x01 /d " I" /c 0x0D /d " S" /c 0x07

 :vdeb
 
 batbox /c 0x07 /g 0 3
 
 echo      ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
 echo      º                                                                º
 echo      º                                                                º
 echo      º      ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿      º
 echo      º      ³                                                  ³      º
 echo      º      ³                                                  ³      º
 echo      º      ³                    ÄÄÄÄÄÄÄÄÄÄÄ                   ³      º
 echo      º      ³                                                  ³      º
 echo      º      ³                                                  ³      º
 echo      º      ³                                                  ³      º
 echo      º      ³                    ÄÄÄÄÄÄÄÄÄÄÄ                   ³      º
 echo      º      ³                                                  ³      º
 echo      º      ³                                                  ³      º
 echo      º      ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ      º
 echo      º                                                                º
 echo      º                                                                º
 echo      º                                                                º
 echo      º      ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿      ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿      º
 echo      º      ³                     ³      ³                     ³      º
 echo      º      ³                     ³      ³                     ³      º
 echo      º      ³     ÄÄÄÄÄÄÄÄÄÄÄ     ³      ³     ÄÄÄÄÄÄÄÄÄÄÄ     ³      º
 echo      º      ³                     ³      ³                     ³      º
 echo      º      ³                     ³      ³                     ³      º
 echo      º      ³                     ³      ³                     ³      º
 echo      º      ³     ÄÄÄÄÄÄÄÄÄÄÄ     ³      ³     ÄÄÄÄÄÄÄÄÄÄÄ     ³      º
 echo      º      ³                     ³      ³                     ³      º
 echo      º      ³                     ³      ³                     ³      º
 echo      º      ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ      ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ      º
 echo      º                                                                º
 echo      º                                                                º
 echo      ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
 
 !bb! /c 0x03 /g 36 11 /d "Jouer"
 
 !bb! /c 0x0e /g 21 25 /d "Score"
 !bb! /c 0x0c /g 49 25 /d "Quitter"
 !bb! *ex
 
 :mdeb
 
 for /f "tokens=1,2,3 delims=:" %%a in ('batbox /m') do (
  set c=%%c
  set y=%%b
  set x=%%a
 )
 
 if !x! GTR 12 if !x! LSS 61 if !y! GTR 6 if !y! LSS 16 goto :regle
 
 if !x! GTR 12 if !x! LSS 34 if !y! GTR 20 if !y! LSS 30 goto :score
 if !x! GTR 41 if !x! LSS 61 if !y! GTR 20 if !y! LSS 30 exit
 
 goto mdeb
 
 rem -------------------------------------------------------------------------------------------------------------------------

 :score
 
 batbox /c 0x07 /g 0 3
 
 echo      ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
 echo      º                                                                º
 echo      º      ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿      º
 echo      º      ³                                                  ³      º
 echo      º      ³                                                  ³      º
 echo      º      ³        1  ³                  ³                   ³      º
 echo      º      ³           ³                  ³                   ³      º
 echo      º      ³        2  ³                  ³                   ³      º
 echo      º      ³           ³                  ³                   ³      º
 echo      º      ³        3  ³                  ³                   ³      º
 echo      º      ³           ³                  ³                   ³      º
 echo      º      ³        4  ³                  ³                   ³      º
 echo      º      ³           ³                  ³                   ³      º
 echo      º      ³        5  ³                  ³                   ³      º
 echo      º      ³           ³                  ³                   ³      º
 echo      º      ³        6  ³                  ³                   ³      º
 echo      º      ³           ³                  ³                   ³      º
 echo      º      ³        7  ³                  ³                   ³      º
 echo      º      ³           ³                  ³                   ³      º
 echo      º      ³        8  ³                  ³                   ³      º
 echo      º      ³           ³                  ³                   ³      º
 echo      º      ³        9  ³                  ³                   ³      º
 echo      º      ³           ³                  ³                   ³      º
 echo      º      ³       10  ³                  ³                   ³      º
 echo      º      ³                                                  ³      º
 echo      º      ³                                                  ³      º
 echo      º      ³                ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿                ³      º
 echo      º      ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´                ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ      º
 echo      º                       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ                       º
 echo      º                                                                º
 echo      ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
 
 !bb! /g 35 30 /c 0x0C /d "Retour"
 
 call :sort Score.txt
 
 set count=0
 for /f "tokens=1,2 delims=/" %%a in (Score.txt) do (
  set /a "count+=1"
  set "number!count!=%%a"
  set "name!count!=%%b"
 )
 
 !bb! /c 0x03 /g 27 8 /d "!number1!" /g 46 8 /c 0x07 /d "!name1!"
 !bb! /c 0x03 /g 27 10 /d "!number2!" /g 46 10 /c 0x07 /d "!name2!"
 !bb! /c 0x03 /g 27 12 /d "!number3!" /g 46 12 /c 0x07 /d "!name3!"
 !bb! /c 0x03 /g 27 14 /d "!number4!" /g 46 14 /c 0x07 /d "!name4!"
 !bb! /c 0x03 /g 27 16 /d "!number5!" /g 46 16 /c 0x07 /d "!name5!"
 !bb! /c 0x03 /g 27 18 /d "!number6!" /g 46 18 /c 0x07 /d "!name6!"
 !bb! /c 0x03 /g 27 20 /d "!number7!" /g 46 20 /c 0x07 /d "!name7!"
 !bb! /c 0x03 /g 27 22 /d "!number8!" /g 46 22 /c 0x07 /d "!name8!"
 !bb! /c 0x03 /g 27 24 /d "!number9!" /g 46 24 /c 0x07 /d "!name9!"
 !bb! /c 0x03 /g 27 26 /d "!number10!" /g 46 26 /c 0x07 /d "!name10!"
 
 !bb! *ex
 :msco
 
 for /f "tokens=1,2,3 delims=:" %%a in ('batbox /m') do (
  set c=%%c
  set y=%%b
  set x=%%a
 )
 
 if !x! GTR 29 if !x! LSS 46 if !y! GTR 29 if !y! LSS 31 goto :vdeb

 goto :msco
 
 rem -------------------------------------------------------------------------------------------------------------------------
 
 :regle
 
 batbox /c 0x07 /g 0 3
 
 echo      ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
 echo      º                                                                º
 echo      º                                                                º
 echo      º      ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿      º
 echo      º      ³                                                  ³      º
 echo      º      ³                                                  ³      º
 echo      º      ³                                                  ³      º
 echo      º      ³   -   : FlŠche de droite                         ³      º
 echo      º      ³                                                  ³      º
 echo      º      ³   -   : FlŠche de gauche                         ³      º
 echo      º      ³                                                  ³      º
 echo      º      ³   -   : FlŠche du bas                            ³      º
 echo      º      ³                                                  ³      º
 echo      º      ³   -             : Touche entr‚e                  ³      º
 echo      º      ³                                                  ³      º
 echo      º      ³                                                  ³      º
 echo      º      ³                                                  ³      º
 echo      º      ³                                                  ³      º
 echo      º      ³   - RŠgle du T‚tris classique avec               ³      º
 echo      º      ³                                                  ³      º
 echo      º      ³   map agrandie (       ).                        ³      º
 echo      º      ³                                                  ³      º
 echo      º      ³   - 6 niveaux au total.                          ³      º
 echo      º      ³                                                  ³      º
 echo      º      ³                                                  ³      º
 echo      º      ³                                                  ³      º
 echo      º      ³                ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿                ³      º
 echo      º      ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´                ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ      º
 echo      º                       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ                       º
 echo      º                                                                º
 echo      ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
 
 !bb! /g 16 8 /c 0x03 /d "Contr" /a 147 /d "les :" /g 18 10 /c 0x03 /a 16 /g 18 12 /c 0x03 /a 17 /g 18 14 /c 0x03 /a 31 /g 18 16 /c 0x0d /d "Orientation" /g 16 19 /c 0x03 /d "R" /a 138 /d "gles :" /g 30 23 /c 0x03 /d "C20xL23" /g 18 25 /c 0x03 /d "6" /g 35 30 /c 0x03 /d "Jouer"
 !bb! *ex
 
 :mreg
 
 for /f "tokens=1,2,3 delims=:" %%a in ('batbox /m') do (
  set c=%%c
  set y=%%b
  set x=%%a
 )
 
 if !x! GTR 29 if !x! LSS 46 if !y! GTR 29 if !y! LSS 31 goto :debut

 goto :mreg
 
 :debut
 
 set xmin=12
 set ymin=6
 set /a xmax=!xmin!+21
 set /a ymax=!ymin!+24
 
 set /a cymin=!ymin!+1
 set /a cymax=!ymax!-1
  
 set /a cxmin=!xmin!+1
 set /a cxmax=!xmax!-1
 
 for /l %%i in (!xmin!,1,!xmax!) do (
   for /l %%j in (!ymin!,1,!ymax!) do (
     set %%i.%%j=0
	 )
 )
 
 for /l %%i in (!xmin!,1,!xmax!) do (
    set %%i.!ymin!=7
    )
 )
 for /l %%i in (!ymin!,1,!ymax!) do (
    set !xmin!.%%i=7
    )
 )
  for /l %%i in (!xmin!,1,!xmax!) do (
    set %%i.!ymax!=7
    )
 )
  for /l %%i in (!ymin!,1,!ymax!) do (
    set !xmax!.%%i=7
    )
 )
 
 rem -------------------------------------------------------------------------------------------------------------------------
 
 batbox /g 0 3 /c 0x07
 
 echo      ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
 echo      º                                   º                            º 
 echo      º                                   º                            º
 echo      º      ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿       º                ÚÄÄÄÄÄ¿     º
 echo      º      ³                    ³       º                ³     ³     º 
 echo      º      ³                    ³       º    Suivant     ³     ³     º 
 echo      º      ³                    ³       º                ³     ³     º 
 echo      º      ³                    ³       º                ³     ³     º 
 echo      º      ³                    ³       º                ÀÄÄÄÄÄÙ     º 
 echo      º      ³                    ³       º                            º 
 echo      º      ³                    ³       º                            º 
 echo      º      ³                    ³       º   Lignes :                 º 
 echo      º      ³                    ³       º                            º 
 echo      º      ³                    ³       º                            º 
 echo      º      ³                    ³       º                            º 
 echo      º      ³                    ³       º   Niveau :                 º 
 echo      º      ³                    ³       º                            º 
 echo      º      ³                    ³       º                            º 
 echo      º      ³                    ³       º                            º 
 echo      º      ³                    ³       º   Score  :                 º 
 echo      º      ³                    ³       º                            º 
 echo      º      ³                    ³       º                            º 
 echo      º      ³                    ³       º                            º 
 echo      º      ³                    ³       º   ³                    ³   º 
 echo      º      ³                    ³       º   ³                    ³   º 
 echo      º      ³                    ³       º   ³                    ³   º 
 echo      º      ³                    ³       º                            º 
 echo      º      ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ       º                            º
 echo      º                                   º                            º 
 echo      º                                   º                            º
 echo      ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
 
 !bb! /c 0x03 /g 52 10 /d "-" /a 16
 
 !bb! /g 49 26 /c 0x03 /d "[P]" /c 0x07 /d "    Pause"
 !bb! /g 49 28 /c 0x03 /d "[Q]" /c 0x07 /d "    Quitter"
 
 rem -------------------------------------------------------------------------------------------------------------------------

:go

 set ligne=0
 set lignetot=0
 set niveau=1
 set score=0
 
 set "quatre=/a 196 /a 196 /a 196 /a 196"
 
 set /a ale=%random%%%7
 
 if !ale!==0 set "objet=1"
 if !ale!==1 set "objet=3"
 if !ale!==2 set "objet=4"
 if !ale!==3 set "objet=6"
 if !ale!==4 set "objet=8"
 if !ale!==5 set "objet=12"
 if !ale!==6 set "objet=16"
 
 set pro=!objet!
 
:deb
 set mobjet=!pro!
 
 set /a ale=%random%%%7
 
 if !ale!==0 set "objet=1"
 if !ale!==1 set "objet=3"
 if !ale!==2 set "objet=4"
 if !ale!==3 set "objet=6"
 if !ale!==4 set "objet=8"
 if !ale!==5 set "objet=12"
 if !ale!==6 set "objet=16"
 
 if !objet!==1 set "col=E"
 if !objet! geq 2 if !objet! leq 3 set "col=3"
 if !objet! geq 4 if !objet! leq 5 set "col=2"
 if !objet! geq 6 if !objet! leq 7 set "col=C"
 if !objet! geq 8 if !objet! leq 11 set "col=D"
 if !objet! geq 12 if !objet! leq 15 set "col=1"
 if !objet! geq 16 if !objet! leq 19 set "col=5"
 
 set x=61
 set y=8
 set pro=!objet!
 call :obj!pro!
 
 !bb! /g 59 7 /d "     "
 !bb! /g 59 8 /d "     "
 !bb! /g 59 9 /d "     "
 !bb! /g 59 10 /d "     "
 !bb! /c 0x0!col! /g !x! !y! /a 219 /g !x2! !y2! /a 219 /g !x3! !y3! /a 219 /g !x4! !y4! /a 219
 !bb! *ex
 
 rem -----
 
 set objet=!mobjet!
 if !objet!==3 set objet=2
 
 if !objet!==1 set "col=E"
 if !objet! geq 2 if !objet! leq 3 set "col=3"
 if !objet! geq 4 if !objet! leq 5 set "col=2"
 if !objet! geq 6 if !objet! leq 7 set "col=C"
 if !objet! geq 8 if !objet! leq 11 set "col=D"
 if !objet! geq 12 if !objet! leq 15 set "col=1"
 if !objet! geq 16 if !objet! leq 19 set "col=5"

 rem -----
 if !niveau!==1 if !ligne! geq 4 set "niveau=2" & set /a "ligne-=4"
 if !niveau!==2 if !ligne! geq 6 set "niveau=3" & set /a "ligne-=6"
 if !niveau!==3 if !ligne! geq 8 set "niveau=4" & set /a "ligne-=8"
 if !niveau!==4 if !ligne! geq 10 set "niveau=5" & set /a "ligne-=10"
 if !niveau!==5 if !ligne! geq 12 set "niveau=Infini"
 
 if !niveau!==1 set "speed=6"
 if !niveau!==2 set "speed=5"
 if !niveau!==3 set "speed=4"
 if !niveau!==4 set "speed=3"
 if !niveau!==5 set "speed=2"
 if !niveau!==Infini set "speed=1"
 
 set /a "score=(!lignetot!*(10-!speed!))*10
 rem -----
  
 set /a x=!xmax!/2+!xmin!/2
 set /a y=!ymin!+2
 set ts=0
 call :obj!objet!
 
 call :objtest
 if !rt!==1 goto :perdu
 
 rem -------------------------------------------------------------------------------------------------------------------------

:a
 set /a ts+=1
 
 call :obj!objet!
 
 !bb! /c 0x0!col! /g !x! !y! /a 219 /g !x2! !y2! /a 219 /g !x3! !y3! /a 219 /g !x4! !y4! /a 219 /c 0x03 /g 54 14 /d "!ligne!" /c 0x03 /g 54 18 /d "!niveau!" /c 0x03 /g 54 22 /d "!score!"
 !bb! *ex
 batbox /k_
 
 If "%errorlevel%"=="13" ( call :change
     call :objrot
    )
	
 If "%errorlevel%"=="112" goto :pause
 If "%errorlevel%"=="80" goto :pause
 
 If "%errorlevel%"=="113" goto :vdeb
 If "%errorlevel%"=="81" goto :vdeb
 
 If "%errorlevel%"=="330" call :gauche
 
 If "%errorlevel%"=="332" call :droite
 
 If "%errorlevel%"=="335" set "bas=1" & call :bas
 
 If !bas!==1 ( set "bas=0"
     goto a
	)
	
 if !ts! geq !speed! ( call :bas
     set "ts=0"
    )

 If !basbloc!==1 ( set "basbloc=0"
     goto :teste
    )
 
 goto a

 rem -------------------------------------------------------------------------------------------------------------------------
 
:bas
 set "$allbb=!$allbb! /c 0x00 /g !x! !y! /a 219 /g !x2! !y2! /a 219 /g !x3! !y3! /a 219 /g !x4! !y4! /a 219"
 
 set /a y+=1
 
 call :obj!objet!
 call :objtest
 
 If "!rt!"=="1" ( 
  set /a y-=1
 
  call :obj!objet!
 
  set "!x!.!y!=!col!"
  set "!x2!.!y2!=!col!"
  set "!x3!.!y3!=!col!"
  set "!x4!.!y4!=!col!"
  
  
  set "basbloc=1"
  set "bas=0"
 )
 
 
goto :eof

:droite
 set "$allbb=!$allbb! /c 0x00 /g !x! !y! /a 219 /g !x2! !y2! /a 219 /g !x3! !y3! /a 219 /g !x4! !y4! /a 219"
 
 set /a x+=1
 
 call :obj!objet!
 call :objtest
 
 If !rt!==1 ( set /a x-=1
  call :obj!objet!
 )

goto :eof

:gauche
 set "$allbb=!$allbb! /c 0x00 /g !x! !y! /a 219 /g !x2! !y2! /a 219 /g !x3! !y3! /a 219 /g !x4! !y4! /a 219"
 
 set /a x-=1
 
 call :obj!objet!
 call :objtest
 
 If !rt!==1 ( set /a x+=1
  call :obj!objet!
 )
 
goto :eof
 
:change
 set "anc=!objet!"
 
 set "$allbb=!$allbb! /c 0x00 /g !x! !y! /a 219 /g !x2! !y2! /a 219 /g !x3! !y3! /a 219 /g !x4! !y4! /a 219"
 
 If "!objet!"=="2" set "objet=3" & goto :eof
 If "!objet!"=="3" set "objet=2" & goto :eof
 
 If "!objet!"=="4" set "objet=5" & goto :eof
 If "!objet!"=="5" set "objet=4" & goto :eof
 
 If "!objet!"=="6" set "objet=7" & goto :eof
 If "!objet!"=="7" set "objet=6" & goto :eof
 
 If "!objet!"=="8" set "objet=9" & goto :eof
 If "!objet!"=="9" set "objet=10" & goto :eof
 If "!objet!"=="10" set "objet=11" & goto :eof
 If "!objet!"=="11" set "objet=8" & goto :eof
 
 If "!objet!"=="12" set "objet=13" & goto :eof
 If "!objet!"=="13" set "objet=14" & goto :eof
 If "!objet!"=="14" set "objet=15" & goto :eof
 If "!objet!"=="15" set "objet=12" & goto :eof
 
 If "!objet!"=="16" set "objet=17" & goto :eof
 If "!objet!"=="17" set "objet=18" & goto :eof
 If "!objet!"=="18" set "objet=19" & goto :eof
 If "!objet!"=="19" set "objet=16" & goto :eof
 
goto :eof

:objrot
 call :obj!objet!
 call :objtest
 
 if !rt!==1 ( set "objet=!anc!"
  call :obj!objet!
  goto :eof
 )
 
 !bb! /c 0x0!col! /g !x! !y! /a 219 /g !x2! !y2! /a 219 /g !x3! !y3! /a 219 /g !x4! !y4! /a 219

goto :eof  

 rem -------------------------------------------------------------------------------------------------------------------------
 
:obj1
 set /a x2=!x!-1
 set /a y2=!y!
 set /a x3=!x!
 set /a y3=!y!+1
 set /a x4=!x!-1
 set /a y4=!y!+1
 goto :eof
 
:obj2
 set /a x2=!x!-1
 set /a y2=!y!
 set /a x3=!x!-2
 set /a y3=!y!
 set /a x4=!x!+1
 set /a y4=!y!
goto :eof

:obj3
 set /a x2=!x!
 set /a y2=!y!-1
 set /a x3=!x!
 set /a y3=!y!+1
 set /a x4=!x!
 set /a y4=!y!+2
goto :eof
 
:obj4
 set /a x2=!x!+1
 set /a y2=!y!
 set /a x3=!x!
 set /a y3=!y!+1
 set /a x4=!x!-1
 set /a y4=!y!+1
goto :eof

:obj5
 set /a x2=!x!+1
 set /a y2=!y!
 set /a x3=!x!
 set /a y3=!y!-1
 set /a x4=!x!+1
 set /a y4=!y!+1
goto :eof
   
:obj6
 set /a x2=!x!-1
 set /a y2=!y!
 set /a x3=!x!
 set /a y3=!y!+1
 set /a x4=!x!+1
 set /a y4=!y!+1
goto :eof

:obj7
 set /a x2=!x!+1
 set /a y2=!y!
 set /a x3=!x!+1
 set /a y3=!y!-1
 set /a x4=!x!
 set /a y4=!y!+1
goto :eof

:obj8
 set /a x2=!x!-1
 set /a y2=!y!
 set /a x3=!x!+1
 set /a y3=!y!
 set /a x4=!x!-1
 set /a y4=!y!+1
goto :eof

:obj9
 set /a x2=!x!
 set /a y2=!y!-1
 set /a x3=!x!
 set /a y3=!y!+1
 set /a x4=!x!+1
 set /a y4=!y!+1
goto :eof

:obj10
 set /a x2=!x!-1
 set /a y2=!y!
 set /a x3=!x!+1
 set /a y3=!y!
 set /a x4=!x!+1
 set /a y4=!y!-1
goto :eof

:obj11
 set /a x2=!x!
 set /a y2=!y!-1
 set /a x3=!x!-1
 set /a y3=!y!-1
 set /a x4=!x!
 set /a y4=!y!+1
goto :eof
 
:obj12
 set /a x2=!x!-1
 set /a y2=!y!
 set /a x3=!x!+1
 set /a y3=!y!
 set /a x4=!x!+1
 set /a y4=!y!+1
goto :eof

:obj13
 set /a x2=!x!
 set /a y2=!y!+1
 set /a x3=!x!
 set /a y3=!y!-1
 set /a x4=!x!+1
 set /a y4=!y!-1
goto :eof

:obj14
 set /a x2=!x!+1
 set /a y2=!y!
 set /a x3=!x!-1
 set /a y3=!y!
 set /a x4=!x!-1
 set /a y4=!y!-1
goto :eof

:obj15
 set /a x2=!x!
 set /a y2=!y!-1
 set /a x3=!x!
 set /a y3=!y!+1
 set /a x4=!x!-1
 set /a y4=!y!+1
goto :eof
 
:obj16
 set /a x2=!x!+1
 set /a y2=!y!
 set /a x3=!x!-1
 set /a y3=!y!
 set /a x4=!x!
 set /a y4=!y!+1
goto :eof

:obj17
 set /a x2=!x!
 set /a y2=!y!-1
 set /a x3=!x!
 set /a y3=!y!+1
 set /a x4=!x!+1
 set /a y4=!y!
goto :eof

:obj18
 set /a x2=!x!+1
 set /a y2=!y!
 set /a x3=!x!
 set /a y3=!y!-1
 set /a x4=!x!-1
 set /a y4=!y!
goto :eof

:obj19
 set /a x2=!x!-1
 set /a y2=!y!
 set /a x3=!x!
 set /a y3=!y!-1
 set /a x4=!x!
 set /a y4=!y!+1
goto :eof

 rem -------------------------------------------------------------------------------------------------------------------------
 
:objtest
 set "xx=0"
 
 If not "!%x%.%y%!"=="0" ( set /a "xx+=1" )
 If not "!%x2%.%y2%!"=="0" ( set /a "xx+=1" )
 If not "!%x3%.%y3%!"=="0" ( set /a "xx+=1" )
 If not "!%x4%.%y4%!"=="0" ( set /a "xx+=1" )
 
 set "rt=0"
 
 If !xx! GTR 0 set "rt=1"

goto :eof

:teste
 
 set "cc=0"
 
 for /l %%j in (!cymin!,1,!cymax!) do (
   set "y%%j=unsafe"
   for /l %%i in (!xmin!,1,!xmax!) do (
     If "!%%i.%%j!"=="0" ( set "y%%j=safe" )
    )
   if "!y%%j!"=="unsafe" ( set /a "imp=%%j" & set "cc=1" 
   )
 )
 
   If "!cc!"=="1" (
     !bb! /c 0x0!col! /g !x! !y! /a 219 /g !x2! !y2! /a 219 /g !x3! !y3! /a 219 /g !x4! !y4! /a 219 
     !bb! *ex
     for /l %%w in (!cxmin!,1,!cxmax!) do (
	  set "%%w.!imp!=0"
	 )
	 REM batbox /g 13 !imp! /d "                    "
	 
	 set /a imp-=1
	 
	 for /l %%m in (!cxmin!,1,!cxmax!) do (
	  for /l %%n in (!imp!,-1,!cymin!) do (
		
		set /a "yy=%%n+1"
		set "xx=%%m"
	    set "!xx!.!yy!=!%%m.%%n!"
		
		set "%%m.%%n=0"
	  )
	 )
	 call :dessin
	 
	 set "x="
	 set "y="
	 set "x1="
	 set "y1="
	 set "x2="
	 set "y2="
	 set "x3="
	 set "y3="
	 set "x4="
	 set "y4="
	 
	 set /a ligne+=1
	 set /a lignetot+=1
	 goto teste
	)
 
  If "!cc!"=="0" !bb! /c 0x0!col! /g !x! !y! /a 219 /g !x2! !y2! /a 219 /g !x3! !y3! /a 219 /g !x4! !y4! /a 219
 
 !bb! *ex
 
 goto :deb
 
 :dessin
  batbox /g 47 31 /c 0x02 !quatre! /d " +1 Ligne " !quatre!
  
  for /l %%m in (!cxmin!,1,!cxmax!) do (
   for /l %%n in (!cymin!,1,!cymax!) do (
     set "$allbb=!$allbb! /g %%m %%n /c 0x0!%%m.%%n! /a 219"
	 )
   set q=%%m
   if !q!==23 ( set "$zz=!$allbb!" 
   set "$allbb=" )
  )
 batbox !$zz!
 !bb! *ex
 
 batbox /g 47 31 /c 0x02 /d "                      "
 
 goto :eof
 
 :perdu
 !bb! /g 48 26 /c 0x03 /d "[R]" /c 0x07 /d "  Recommencer"
 !bb! /g 48 28 /c 0x03 /d "[Q]" /c 0x07 /d "  Quitter     "
 !bb! /g 49 31 /c 0x0C !quatre! /d " PERDU " !quatre!
 
 !bb! *ex
 
 call :scoresave
 :bp
 batbox /k
 If "%errorlevel%"=="113" goto :vdeb
 If "%errorlevel%"=="81" goto :vdeb

 If "%errorlevel%"=="114" goto :debut
 If "%errorlevel%"=="82" goto :debut
 
 goto :bp

 :pause
 !bb! /g 48 26 /c 0x03 /d "[P]" /c 0x07 /d "  Continuer"
 !bb! /g 48 28 /c 0x03 /d "[Q]" /c 0x07 /d "  Quitter     "
 !bb! /g 49 31 /c 0x03 !quatre! /d " PAUSE " !quatre!
 
 !bb! *ex
 
 :bpa
 batbox /k
 If "%errorlevel%"=="113" goto :vdeb
 If "%errorlevel%"=="81" goto :vdeb

 If "%errorlevel%"=="112" ( 
     !bb! /g 48 26 /c 0x03 /d " [P]" /c 0x07 /d "    Pause  "
     !bb! /g 48 28 /c 0x03 /d " [Q]" /c 0x07 /d "    Quitter "
	 !bb! /g 49 31 /c 0x03 /d "               "
	 goto :a
	)
	
 If "%errorlevel%"=="80" ( 
     !bb! /g 48 26 /c 0x03 /d " [P]" /c 0x07 /d "    Pause  "
     !bb! /g 48 28 /c 0x03 /d " [Q]" /c 0x07 /d "    Quitter "
	 !bb! /g 49 31 /c 0x03 /d "               "
	 goto :a
	)
 
 goto :bpa
 
 :scoresave
 
 If exist temp.cmd del /q temp.cmd

 (
 echo;@echo off
 echo;mode con cols=40 lines=21
 echo;title Score Save
 echo;color 07
 echo;echo.
 echo;echo.
 echo;echo      ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
 echo;echo      º                            º
 echo;echo      º                            º
 echo;echo      º                            º
 echo;echo      º                            º
 echo;echo      º                            º
 echo;echo      º                            º
 echo;echo      º                            º
 echo;echo      º    ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿    º
 echo;echo      º    ³                  ³    º
 echo;echo      º    ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ    º
 echo;echo      º                            º
 echo;echo      º                            º
 echo;echo      º                            º
 echo;echo      º                            º
 echo;echo      º                            º 
 echo;echo      ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼ 

 echo;batbox /g 9 5 /c 0x07 /d "Enregistrer votre score" /g 9 7 /c 0x07 /d "    au " /c 0x03 /d "pseudo" /c 0x07 /d " de ..    " /g 9 15 /c 0x0E /d "    Score :" /c 0x07 /d " !score!" /g 12 11 /c 0x03
 echo;set /p "lettre="
 echo;echo !score!/%%lettre%%^>^>Score.txt
 echo;exit
 )>temp.cmd

 start temp.cmd
 
goto :eof

:sort <File>
  type nul > "%temp%\tempfile"
  for /f "tokens=1,2 delims=/" %%a in ('type "%~1"') do (
    set /a seq=1000000000+%%~a
    echo;!seq!/%%b
  )>>"%temp%\tempfile"
  type nul > "%~1"
  for /f "tokens=1,2 delims=/" %%a in ('sort /r "%temp%\tempfile"') do (
    set /a seq=%%~a-1000000000
    echo;!seq!/%%b
  )>>"%~1"
goto :eof

 rem -------------------------------------------------------------------------------------------------------------------------

:algobatbox
 set "$tempbb=%*"
   
  If "!$tempbb!"=="*ex" ( batbox !$allbb!
     set "$allbb=" 
     set "$tempbb=" 
	 goto :eof 
	 )
  
 set "$allbb=!$allbb! !$tempbb!"

goto :eof

:batbox

for %%b in (
4D534346000000005A040000000000002C000000000000000301010001000000
000000004700000001000100000800000000000000006546F2B1200062617462
6F782E65786500D7E54E4C0B040008434BB5555F685B55183F499BA06D4DB235
295311EFA4151C23E04A7C2854B2759D8EA51A92B88A14BAFCB9C9BD697A6FB8
B9B19DF32123093223F8361FF6B212F0C597227B98A26C359382B46FC38789FB
F7306E9C6011FF14D15E7FDFB9376D26854DD093FCCE39DFEFFBCE777EE7BBE7
26536F55988331D6CB7CCC34190B938116660F6F15C0F3ECE71E76E9F1F5FD97
1D91F5FD09492E09454DCD69C979219D5414551752A2A09515415684A3AFC785
793523069FE81BEEE4884E32167138D8DBAB9B890E779B791DFD0EC731E686E1
B6495F17481D8D4EC66CB9D06F37C1E2477E66ACA77BDD76A46DDAEDC341C6E6
9C8F70D8FFB805B385A48EF190DB16E4B67477B753548AFFB9497D436196B706
692B80EE0F74662083BE7ACD9FFFD50C44FC61D67453D86FB6E1A4E00A0A2A39
CFA27B6F9056E87CC54075D3F4D6AEE224CD202DF1492F913744861978D78A31
62F04FBC3F58F94678D1CC7E36C0C63E3A83286F6D14FC2BB9BB1BED1BA6691A
7B6045CD909B2F4D60E3760B74E58C63D65BF740BB1928205FFDAAB7F6097833
700AD63855CC5BEFE76E225CB8D4ACD940FAF62F506C7C81AEC745A29A2FA3CB
363D486F7CCCD931628F70D6479B863CBCB704BC49028E90AED3085E751D1BB4
DE91264D24DEBDC00B31835DDB4F52E01C02E35D6CF5DA636D468E35ACFBDDF5
1CF2FE05D35BBF8F7EE9A921EB303729E24744B4AF6F61761133E37B32BF26F3
4F7A69703452738988FBA481CE63DCA1199DA17D010EE9F92EF112C28D15F21F
A067D7EDCA50A63C655A82FFDC2AAA0A661A7B0C90270A8FE9A2A22CEDD46B69
A748ED6F1190DF67869C3C5B146BAC3BE590F6F25D2C7E067C759C1C78CCEB48
99AD8E93DFE9AD5F81D56A8C0FC13AB7B5F293EFEC3DFA21EAE1E5894E9F940E
76D5CFD73286A0328F4FDC0C14ADEBD43287BF3C81A0AA8B2E706FE3191A1A4F
D7BFF3D6E8A56FE5B7EF5FCD7A08FFB8958B569A8E59E166AF196AF08D25CB1C
29B191CC18FFF6EDFE2A7DEA0BB30D60744F985DC03883B10CAC00CBC00DA07F
2F8A877104E35C2E99CECCAB0B52F1B4124CA5788E83819D7CB7F0D334037BD8
BFC3FD002E02BBB78BDB0437E0DF5DD354FCE4442C113C1A89B01393B1D72623
A387B8C1DE884FC63A73BFBDD8BF9D242EA90BD3B2925117C8D2C1D780F3C032
B006DC060C8A87C07DB6E8478DC33B2EEA713DF36A52C91444BE9FA84FA84A49
2D8853F87F789049888BFA615DD7E45459171FF04C94B592AA45D592ACCBAA42
AB626232633B8F2BC5B27E98E20BA258DC65DD7125ABDA5A1EC2772AF101F49F
072E02CBC065E02B600DB80EDC04EE011BF639FF6D3C63454D56F42CCD6673A2
9E96F88CA6F34959496AB9126C7151D6393F9792AC5949D774B5C039B5285221
66173499178BCD6A28098DE9825AB298B45492DF11EDBFBCBF01            
) Do >>t.dat (Echo.For b=1 To len^("%%b"^) Step 2
ECHO WScript.StdOut.Write Chr^(Clng^("&H"^&Mid^("%%b",b,2^)^)^) : Next)
Cscript /b /e:vbs t.dat>batbox.ex_
Del /f /q /a t.dat >nul 2>&1
Expand -r batbox.ex_ >nul 2>&1
Del /f /q /a batbox.ex_ >nul 2>&1

goto :eof

 

goto :eof
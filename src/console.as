#module HSPPO_console
#defcfunc stdrun
return stdruns
#deffunc stdrunclear
stdruns=""

return 0
#deffunc consoleinit
	sdim consolemon,131072
	sdim consoles,128
	sdim stdruns,128
	
return 0
#deffunc consoleadd str cadds

	consolemon+=cadds
	goto *consoleshow
return 0
#deffunc consoleLinput str add
	consoles+=add
	goto *consoleshow
return 0
#deffunc consoleLdel
	notesel consoles
	consoles=strmid(consoles,0,notesize-1)
	goto *consoleshow
return 0
#deffunc consoleLclear
	consoles=""
	goto *consoleshow
return 0
#deffunc consoleLcommit
	consolemon=consolemon+consoles+"\n"
	stdruns=consoles
	consoles=""
	goto *consoleshow
return 0
*consoleshow
	gsel 0
	redraw 0
	color 0,0,0
	if valueshow("echo.backcolor")="green"{
		color 0,255,0
	}
	if valueshow("echo.backcolor")="black"{
		color 0,0,0
	}
	if valueshow("echo.backcolor")="blue"{
		color 0,0,255
	}
	if valueshow("echo.backcolor")="red"{
		color 255,0,0
	}
	if valueshow("echo.backcolor")="white"{
		color 255,255,255
	}
	boxf 0,0,640,480
	notesel consolemon
	repeat 1
		if notemax>29{
			notedel 0
			continue 0
		}
	loop
	color 255,255,255
	pos 0,0
	mes consolemon+consoles+"_"
	redraw 1
	return 0
#global

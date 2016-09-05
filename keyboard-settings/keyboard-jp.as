/*******************************************************************************************************************************************
Keyboard-settings
It is the source file  it's decoding where you're typing keyboard.
If you change this file and recompile "source.hsp",You may can use on different keyboard-locale.
/*******************************************************************************************************************************************/
//logmes ""+ret
	if ret=13{
		consoleLcommit
		gosub *showconsole
		setvalue "doing",""+(int(valueshow("doing"))-3+100)
		goto *endkey
	}
	getkey ky,16
	if ky=1{
		shift=1
	}else{
		shift=0
	}
/*	if ret=32{
		poke retstr,0,ret
		consoleLinput retstr
		gosub *showconsole
		
	}*/
	if ret=8{
		notesel console
		consoleLdel
		gosub *showconsole
		goto *endkey
		
	}
	if (64<ret) & (ret<91){
		poke retstr,0,ret+32-shift*32
		consoleLinput retstr
		gosub *showconsole
		goto *endkey
	}
/*	if ret=190{//.
		poke retstr,0,46
		consoleLinput retstr
		gosub *showconsole
	}
	if ret=191{///
		poke retstr,0,47
		consoleLinput retstr
		gosub *showconsole
	}*/
/*	if ret=220{
		poke retstr,0,92
		consoleLinput retstr
		gosub *showconsole
	}
	if ret=186{
		poke retstr,0,58
		consoleLinput retstr
		gosub *showconsole
	}*/
	if ret=32{
		poke retstr,0,32
		consoleLinput retstr
		gosub *showconsole
		goto *endkey
	}
/*	if ret=192{//@
		poke retstr,0,64
		consoleLinput retstr
		gosub *showconsole
	}*/
	if 47<ret & ret<58{
		
		if shift=0{
			poke retstr,0,ret
		}else{
			if ret!48:poke retstr,0,ret-16
		}
		consoleLinput retstr
		gosub *showconsole
		goto *endkey
	}
	if ret!0{
		poke retstr,0,ret
		consoleLinput retstr
	}
*endkey
/*•¶š—ñ‘€ìŒn“à•”–½—ßW
//
//
//
//
//
*/
	if meirei="delline"{
		systemstrtmp=valueshow(meireipal(0))
		notesel systemstrtmp
		notedel int(meireipal(1))
		setvalue meireipal(0),systemstrtmp
		goto *endcom
	}
	if meirei="getline"{
		systemstrtmp=valueshow(meireipal(0))
		notesel systemstrtmp
		noteget systemstrtmpp,int(meireipal(1))
		setvalue "@strutl",systemstrtmpp
		goto *endcom
	}
/*	if meirei="search"{
		systemstrtmp=valueshow(meireipal(1))
		notesel systemstrtmp
		repeat notemax
			noteget systemstrtmpp,cnt
			if instr(systemstrtmpp,0,meireipal(2))!-1{
				setvalue meireipal(3),cnt
				break
			}
		loop
		goto *endcom
	}*/
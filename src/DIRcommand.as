/****************************************************************************************************************************************************
	Command list
	You can easily change commands with this file.
	It isn't an module,so you have to be careful to edit this file.
*****************************************************************************************************************************************************/
	if meirei="getfilelist"{
		dirlist systemdirlist,"*.*",3
		if meireipal(0)!"":setvalue meireipal(0),systemdirlist+"END"
		goto *endcom
	}
	if meirei="getfolderlist"{
		dirlist systemdirlist,"*.*",5
		if meireipal(0)!"":setvalue meireipal(0),systemdirlist+"END"
		goto *endcom
	}
	if meirei="copy"{
		if valall=""{
			setvalue "ERRORCODE","11"
			setvalue "@read","","8"
			goto *endcom
		}
		exist systemroot+hsppopath(valueshow("@copyfrom"))
		if strsize=-1{
			setvalue "ERRORCODE","12"
			consoleadd "No such file or directory:"+valueshow("@copyfrom")+"\n"
		}else{
			bcopy systemroot+hsppopath(valueshow("@copyfrom")),systemroot+hsppopath(valall)
		}
		goto *endcom
	}
	if meirei="read"{
		if valall=""{
			setvalue "ERRORCODE","11"
			setvalue "@read","",8
			goto *endcom
		}
		exist hsppopath(valall)
		if strsize=-1{
			setvalue "@read","",8
			setvalue "ERRORCODE","12"
			consoleadd "No such file or directory:"+valall+"\n"
		}else{
			sdim systemstrtmp,20000
			bload hsppopath(valall),systemstrtmp
			setvalue "@read",systemstrtmp
			//consoleadd systemstrtmp
			//consoleadd "\n\n[EOF]\n"
		}
		goto *endcom
	}
	if meirei="write"{
		sdim systemstrtmp,2000
		exist hsppopath(meireipal(0))
		if strsize=-1{
			bcopy systemroot+"\\ROOTFS.KSY",hsppopath(meireipal(0))
		}
		systemstrtmp=strmid(valall,strlen(meireipal(0))+1,strlen(valall))
		bsave hsppopath(meireipal(0)),systemstrtmp,strlen(systemstrtmp)
		goto *endcom
	}
	if meirei="exist"{
		exist hsppopath(valall)
		setvalue "@exist",""+strsize
		goto *endcom
	}
	if meirei="existfolder"{//change current directory
		systemcur_=systemcur
		setvalue "ERRORCODE","0"
		if strmid(valall,-1,1)="/"{
			valall=strmid(valall,0,strlen(valall)-1)
		}
		if strmid(valall,-1,1)="\\"{
			valall=strmid(valall,0,strlen(valall)-1)
		}
		repeat 1
			if strmid(valall,0,3)="../"{
				systemcur_=getpath(systemcur_,32)//一個↑の階層に戻しています。
				systemcur=strmid(systemcur,0,strlen(systemcur_)-1)//上記の処理で最後に/が入るのを防いでいます
				valall=strmid(valall,3,strlen(valall)-1)//そしてvalallも../を取り除きます。
				continue 0//もういっかい判定します。
			}else{//../がない場合はbreak.
				break
			}
		loop
		if valall=""{
			dirlist systemstrtmp,systemroot+valall,5
			if stat=0:goto *naiyownn
			systemcur_=hsppopath(valall)
			chdir systemroot+valall
			goto *endcom
		}
		if strmid(valall,0,8)="/drives/"{
			dirlist systemstrtmp,strmid(valall,8,strlen(valall)-8),5
			if stat=0:goto *naiyownn_e
			goto *endcom
		}
		if strmid(valall,0,1)="/"{//ここの処理に入るのは絶対パスですね★
			dirlist systemstrtmp,systemroot+valall,5
			if stat=0:goto *naiyownn_e
			goto *endcom
		}else{//ここの処理にに入るのは相対(ry
			dirlist systemstrtmp,systemroot+systemcur_+"\\"+valall,5
			if stat=0:goto *naiyownn_e
			goto *endcom
		}
*naiyownn_e//ラベル名ふざけている?まあ気になさらないで.
		setvalue "ERRORCODE","12"
		goto *endcom
	}
	if meirei="cd"{//change current directory
		setvalue "ERRORCODE","0"
		repeat 1
			if strmid(valall,0,3)="../"{
				systemcur=getpath(systemcur,32)//一個↑の階層に戻しています。
				systemcur=strmid(systemcur,0,strlen(systemcur)-1)//上記の処理で最後に/が入るのを防いでいます
				valall=strmid(valall,3,strlen(valall)-1)//そしてvalallも../を取り除きます。
				continue 0//もういっかい判定します。
			}else{//../がない場合はbreak.
				break
			}
		loop
		if strmid(valall,-1,1)="/"{
			valall=strmid(valall,0,strlen(valall)-1)
		}
		if strmid(valall,-1,1)="\\"{
			valall=strmid(valall,0,strlen(valall)-1)
		}
		if valall=""{
			dirlist systemstrtmp,systemroot+valall,5
			if stat=0:goto *naiyownn
			chdir systemroot+systemcur
			setvalue "@chdir",systemcur,32
			goto *endcom
		}
		if strmid(valall,0,8)="/drives/"{
			dirlist systemstrtmp,strmid(valall,8,strlen(valall)-8),5
			if stat=0:goto *naiyownn
			chdir strmid(valall,8,strlen(valall)-8)+"\\"
			systemcur=hsppopath(valall)
			setvalue "@chdir",systemcur,32
			goto *endcom
		}
		if strmid(valall,0,1)="/"{//ここの処理に入るのは絶対パスですね★
			dirlist systemstrtmp,systemroot+valall,5
			if stat=0:goto *naiyownn
			chdir systemroot+valall
			systemcur=hsppopath(valall)
			setvalue "@chdir",systemcur,32
			goto *endcom
		}else{//ここの処理にに入るのは相対(ry
			dirlist systemstrtmp,systemroot+systemcur+"\\"+valall,5
			if stat=0:goto *naiyownn
			chdir systemroot+systemcur+"\\"+valall
			systemcur=hsppopath(systemcur+"/"+valall)
			setvalue "@chdir",systemcur,32
			goto *endcom
		}
*naiyownn//ラベル名ふざけている?まあ気になさらないで.
		setvalue "ERRORCODE","12"
		consoleadd "No such file or directory:"+valall+"\n"
		goto *endcom
	}
	
	if meirei="system'makedir"{
		mkdir valall
		setvalue "ERRORCODE","0"
		goto *endcom
	}
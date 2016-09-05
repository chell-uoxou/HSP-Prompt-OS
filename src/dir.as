#module hsppo_directory
#defcfunc dirprocess str systemroott,str systemcurrentt,str valalll
sdim systemroot,1000
systemroot=systemroott
sdim systemstrtmp,1000
sdim systemcurrent,1000
systemcurrent=systemcurrentt
sdim valall,1000
valall=valalll
logmes valall
logmes systemcurrent
logmes systemroot
	repeat 1
		if strmid(valall,0,3)="../"{
			systemcurrent=getpath(systemcurrent,32)//一個↑の階層に戻しています。
			systemcurrent=strmid(systemcurrent,0,strlen(systemcurrent)-1)//上記の処理で最後に/が入るのを防いでいます
			valall=strmid(valall,3,strlen(valall)-1)//そしてvalallも../を取り除きます。
			continue 0//もういっかい判定します。
		}else{//../がない場合はbreak.
			break
		}
	loop
	if valall="":goto *naiyownn
	if strmid(valall,0,1)="/"{//ここの処理に入るのは絶対パスですね★
		exist systemroot+valall
		if strsize=-1:goto *naiyownn
		chdir systemroot+valall
		systemcurrent=valall
		goto *endcom
	}else{//ここの処理にに入るのは相対(ry
		exist systemroot+systemcurrent+"\\"+valall
		if strsize=-1:goto *naiyownn
		chdir systemroot+systemcurrent+"\\"+valall
		systemcurrent=systemcurrent+"/"+valall
		goto *endcom
	}
*endcom
	return systemcurrent
*naiyownn
//	dialog systemcurrent
	return ""
#global

mes ""+dirprocess("H:\\doc_\\個人フォルダ\\DOC\\hsp_files\\hspファイル\\our programs\\Console\HSPPO\\HSPPO-AdC-making\\ROOT","/home/user/a","../sample.sh")
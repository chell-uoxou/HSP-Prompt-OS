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
			systemcurrent=getpath(systemcurrent,32)//����̊K�w�ɖ߂��Ă��܂��B
			systemcurrent=strmid(systemcurrent,0,strlen(systemcurrent)-1)//��L�̏����ōŌ��/������̂�h���ł��܂�
			valall=strmid(valall,3,strlen(valall)-1)//������valall��../����菜���܂��B
			continue 0//���������������肵�܂��B
		}else{//../���Ȃ��ꍇ��break.
			break
		}
	loop
	if valall="":goto *naiyownn
	if strmid(valall,0,1)="/"{//�����̏����ɓ���̂͐�΃p�X�ł��ˁ�
		exist systemroot+valall
		if strsize=-1:goto *naiyownn
		chdir systemroot+valall
		systemcurrent=valall
		goto *endcom
	}else{//�����̏����ɂɓ���̂͑���(ry
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

mes ""+dirprocess("H:\\doc_\\�l�t�H���_\\DOC\\hsp_files\\hsp�t�@�C��\\our programs\\Console\HSPPO\\HSPPO-AdC-making\\ROOT","/home/user/a","../sample.sh")
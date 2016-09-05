//ŠÂ‹«•Ï”ƒ‚ƒWƒ…[ƒ‹ALFER.txt

#module valuemng
#deffunc valueinit
	sdim vdata,4096,256,2
	dim vpermit,256
	dim vsystemstat
return 0

#deffunc setvalue str addvname,str addval,int permitting
vsystemstat=-1
if addvname="":return 1
repeat length(vdata)
	if vdata(cnt,0)=addvname{
		if vpermit(cnt)<=permitting{
			vdata(cnt,1)=addval
			vsystemstat=cnt
			break
		}else{
			vsystemstat=-2
		}
	}
	if vdata(cnt,0)="" & vsystemstat!-2{
		vdata(cnt,0)=addvname
		vdata(cnt,1)=addval
		vpermit(cnt)=permitting
		vsystemstat=cnt
	break
	}
loop
if vsystemstat>=0:return 0
return -1



#defcfunc valueshow str showvname
repeat length(vdata)
	vsystemstat=-1
	if vdata(cnt,0)=showvname{
		vsystemstat=cnt
	break
	}
loop
if vsystemstat!-1:return vdata(vsystemstat,1)
return ""

#defcfunc getvalue int getvaluem,int getvaluemm
	return vdata(getvaluem,getvaluemm)
#global
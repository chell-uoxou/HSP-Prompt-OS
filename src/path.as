#module
	#defcfunc hsppopath str path
	sdim pathes,2000
	pathes=path
		if strmid(pathes,0,6)="/drive:"{
			return strmid(pathes,7,strlen(pathes)-7)
		}
	return pathes
#global

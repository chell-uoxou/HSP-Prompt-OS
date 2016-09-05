/****************************************************************************************************************************************************
	Command list
	You can easily change commands with this file.
	These commands are compatible with PHP pormpt OS.
	It isn't an module,so you have to be careful to edit this file.
*****************************************************************************************************************************************************/
	if meirei="getdate"{
		consoleadd ""+gettime(0)+"."+gettime(1)+"."+gettime(3)
		goto *endcom
	}
	if meirei="gettime"{
		consoleadd ""+gettime(4)+":"+gettime(5)+":"+gettime(6)
		goto *endcom
	}
	if meirei="halt"{
		end
		goto *endcom
	}
	if meirei="exec"{
		if valall=""{
			consoleadd "Type program you want to run.\n"
		}else{
			exist valall
			if strsize!-1 | valall="cmd" | valall="calc" | valall="notepad"{
				exec valall
			}else{
				consoleadd "\""+valall+"\":File not exists."
			}
				consoleadd "\n"
		}
		goto *endcom
	}

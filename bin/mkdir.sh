setvalue tomake %@Aall%
existfolder %tomake%
cmpif %ERRORCODE% 12
goto okmake
echo %tomake%:Folder exists.
goto end

label okmake
system'makedir %tomake%


label end
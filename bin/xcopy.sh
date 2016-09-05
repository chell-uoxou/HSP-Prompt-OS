setvalue xloops 0
cd %@ASCCALL0%
getfilelist @xlist

setvalue echo.autoreturn 0
echo %@ASCCALL0% to %@ASCCALL1%%return%

label loops

cd %@ASCCALL0%
getline @xlist %xloops%

cmpif %@strutl% END
goto end

setvalue @copyfrom %@ASCCALL0%/%@strutl%
copy %@ASCCALL1%/%@strutl%

echo %@strutl%%return%

valuepp xloops
cmpif %@strutl% END
goto end

goto loops


label end
setvalue xloops 0
br
setvalue echo.autoreturn 0
echo All completed!
br

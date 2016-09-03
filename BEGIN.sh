setvalue echo.autoreturn 1





modinit

ver
echo Type 'help' to show help .
setvalue prompt <HSPPO>
cd /home/user
cmpif %@systemmode% ro
goto ro

goto end

label ro
hsppotour
echo HSP Prompt OS は、現在ゲストモードで実行されています。


label end

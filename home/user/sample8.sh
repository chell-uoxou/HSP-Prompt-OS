setvalue copy.echoAR %echo.autoreturn%
setvalue echo.autoreturn 0
echo Type your name:
input yourname
echo your name is %yourname% so you are crazy!!!!!!!!!!!!
setvalue echo.autoreturn %copy.echoAR%
br
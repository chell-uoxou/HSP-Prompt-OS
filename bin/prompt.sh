setvalue copy.echoAR %echo.autoreturn%
setvalue echo.autoreturn 0
echo 新しいプロンプトを設定してください:
input prompt
setvalue echo.autoreturn %copy.echoAR%
echo 設定完了。
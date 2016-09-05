echo [MODINIT:CMDLINE]開始しています...
cmpif %@modinited% 1
goto initederror
















































goto end
label initederror
echo [MODINIT:ERRLINE]エラー: modinit はこのセッションでは既に実行されています。

label end
setvalue @modinited 1
echo [MODINIT:CMDLINE]完了
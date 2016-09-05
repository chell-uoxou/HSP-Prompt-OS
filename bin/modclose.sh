echo [MODINIT:CMDLINE]終了しています...
cmpif %@modinited% 0
goto noinitederror
















































goto end
label noinitederror
echo [MODCLOSE:ERRLINE]エラー: modinit がこのセッションでは実行されていません。

label end
setvalue @modinited 0
echo [MODCLOSE:CMDLINE]完了
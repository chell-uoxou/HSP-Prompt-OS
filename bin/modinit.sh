echo [MODINIT:CMDLINE]�J�n���Ă��܂�...
cmpif %@modinited% 1
goto initederror
















































goto end
label initederror
echo [MODINIT:ERRLINE]�G���[: modinit �͂��̃Z�b�V�����ł͊��Ɏ��s����Ă��܂��B

label end
setvalue @modinited 1
echo [MODINIT:CMDLINE]����
echo [MODINIT:CMDLINE]�I�����Ă��܂�...
cmpif %@modinited% 0
goto noinitederror
















































goto end
label noinitederror
echo [MODCLOSE:ERRLINE]�G���[: modinit �����̃Z�b�V�����ł͎��s����Ă��܂���B

label end
setvalue @modinited 0
echo [MODCLOSE:CMDLINE]����
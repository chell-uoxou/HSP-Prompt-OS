set echo.autoreturn 1
label step1
cls
echo
echo ################################################################################
echo #                                                                              #
echo #                           HSP PROMPT OS INSTALLER                            #
echo #                                                                              #
echo ################################################################################
echo #                                                                              #
echo # HSP PROMPT OS 1.5.0 �C���X�g�[���[�ւ悤����!                                #
echo # ���̃v���O�����́A���g����PC�A�܂��̓����[�o�u�����f�B�A��HSP PROMPT OS ��   #
echo # �C���X�g�[��������̂ł��B���̃v���O�����𗘗p���ăC���X�g�[�����邱�Ƃɂ�� #
echo # ���Ȃ���HSP PROMPT OS�����Ȃ����g�̊��ŗ��p���A�܂��A�A�v���P�[�V������    #
echo # �ǉ��A�܂��͎��삷�邱�Ƃ��\�ł��B�����Ă��̊����^�p���邱�Ƃ��ł��܂��B #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo ################################################################################
echo
echo �C���X�g�[���𑱍s���܂���?(Y/N):
label againask1
input ynask
cmpif %ynask% y
goto step2
cmpif %ynask% n
goto end
goto againask1

label step2
cls
echo
echo ################################################################################
echo #                                                                              #
echo #                           HSP PROMPT OS INSTALLER                            #
echo #                                                                              #
echo ################################################################################
echo #                                                                              #
echo # �C���X�g�[���̃^�C�v���w�肵�Ă�������:                                      #
echo #                                                                              #
echo # 1.�V�K�C���X�g�[��                                                           #
echo #                                                                              #
echo # 2.�C���X�g�[���̒��~�ƏI��                                                   #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo ################################################################################
echo
echo �w�肵�Ă�������(1/2):

label againask2
input ynask
cmpif %ynask% 1
goto step3-1
cmpif %ynask% 2
goto end
goto againask2

label step3-1
cls
echo
echo ################################################################################
echo #                                                                              #
echo #                           HSP PROMPT OS INSTALLER                            #
echo #                                                                              #
echo ################################################################################
echo #                                                                              #
echo # �V�K�C���X�g�[�������܂��B�ǂ̂悤�ȍ\���ŃC���X�g�[�����܂���?:             #
echo #                                                                              #
echo # 1.�C���X�g�[��(�W��)                                                         #
echo #                                                                              #
echo # 2.�C���X�g�[���̒��~�ƏI��                                                   #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo ################################################################################
echo
echo �w�肵�Ă�������(1/2):

label againask3
input ynask
cmpif %ynask% 1
goto step4-1
cmpif %ynask% 2
goto end
goto againask3

label step4-1
cls
echo
echo ################################################################################
echo #                                                                              #
echo #                           HSP PROMPT OS INSTALLER                            #
echo #                                                                              #
echo ################################################################################
echo #                                                                              #
echo # HSP PROMPT OS���C���X�g�[�������΃t�H���_�p�X���w�肵�Ă�������:           #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo # �q���g:�����h���C�u���w�肵�����ꍇ�́A�Ⴆ��C:\���w�肵�����ꍇ�́A         #
echo #                                                                              #
echo # /drives/c:/                                                                  #
echo #                                                                              #
echo # �̂悤�ɁA/drives/��O�ɂ��Ă��������B                                     #
echo #                                                                              #
echo ################################################################################
echo
echo �w�肵�Ă�������:
input ynask
cd %ynask%
cmpif %ERRORCODE% 12
goto step4-1
set installpath %@chdir%
goto step5-1



label step5-1
cls
echo
echo ################################################################################
echo #                                                                              #
echo #                           HSP PROMPT OS INSTALLER                            #
echo #                                                                              #
echo ################################################################################
echo #                                                                              #
echo # �ȉ��̐ݒ��HSP PROMPT OS 1.5.0 ���C���X�g�[�����܂�:                        #
echo #                                                                              #
echo # �t�H���_:%installpath%                                                       
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo # ����!���ꂪ�ŏI�m�F�ł��B                                                    #
echo # ���łɃt�H���_�����݂���ꍇ�A�����̃t�@�C�����㏑�����鋰�ꂪ����܂��B     #
echo # ����ł��C���X�g�[�����܂���?                                                #
echo #                                                                              #
echo ################################################################################
echo
echo �C���X�g�[�����܂���?(Y/N):
label againask5-1
input ynask
cmpif %ynask% y
goto step6-1
cmpif %ynask% n
goto end
goto againask5-1

label step6-1
cls
echo �C���X�g�[�����J�n���Ă��܂�...
echo �t�@�C�����R�s�[���Ă��܂�...
mkdir HSPPO-1.5.0
cd HSPPO-1.5.0
mkdir bin
mkdir home
mkdir drives
cd home
mkdir user
cd /
echo %@chdir%%return%
echo %installpath%/HSPPO-1.5.0/
echo %installpath%/HSPPO-1.5.0/home/user/
echo %installpath%/HSPPO-1.5.0/bin/
echo %installpath%/HSPPO-1.5.0/drives/
xcopy /home/user/ %installpath%/HSPPO-1.5.0/home/user/
xcopy /bin/ %installpath%/HSPPO-1.5.0/bin/
cd ../
xcopy  %installpath%/HSPPO-1.5.0/

cd %installpath%/HSPPO-1.5.0/
setvalue @hsmode po_mode=rw
write systeminfo.ksy %@hsmode%


cls
setvalue echo.backcolor green
echo ################################################################################
echo #                                                                              #
echo #                           HSP PROMPT OS INSTALLER                            #
echo #                                                                              #
echo ################################################################################
echo #                                                                              #
echo # �C���X�g�[���͐���Ɋ������܂����B                                           #
echo #                                                                              #
echo # �C���X�g�[�����ꂽHSPPO�𗘗p����ɂ́A���܊J�����t�H���_�[�́A              #
echo #                                                                              #
echo # HSPPO.EXE �����s���Ă��������B                                               #
echo #                                                                              #
echo # Enter�L�[�ŃC���X�g�[���[���I�����܂��B                                      #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #            HSP PROMPT OS ��I��ł����������肪�Ƃ��������܂�! by �J���҈ꓯ #
echo #                                                                              #
echo ################################################################################
echo
echo
input ynask

label end
setvalue echo.backcolor black

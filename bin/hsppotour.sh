label begin
cmpif %@systemmode% ro
goto start
goto end
label start
cls
setvalue echo.backcolor green
echo
echo ################################################################################
echo #                                                                              #
echo #                            HSP PROMPT OS TOUR                                #
echo #                                                                              #
echo ################################################################################
echo #                                                                              #
echo #                   HSP Prompt OS 1.5.0 beta �ւ悤����!                       #
echo #                                                                              #
echo #                                                                              #
echo #  ���݁AHSP Prompt OS �́A�Q�X�g���[�h�œ��삵�Ă��܂��B                      #
echo #                                                                              #
echo #                                                                              #
echo #  �V�X�e�����������ėV�Ԃɂ́Ainstall�R�}���h�𗘗p����                       #
echo #                                                                              #
echo # �C���X�g�[�����Ă���N�����Ă��������B                                       #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo # HSP Prompt OS �c�A�[�����s�ł��܂��B                                         #
echo #                                                                              #
echo # �c�A�[���J�n���܂���?                                                        #
echo #                                                                              #
echo # �J�n���Ȃ��ꍇ�́A���̂��ƃR�}���h���C���Ɉڍs���܂��B                       #
echo #                                                                              #
echo #                                                                              #
echo ################################################################################
echo
echo �����I�����Ă�������(Y/N):
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
echo #                            HSP PROMPT OS TOUR                                #
echo #                                                                              #
echo ################################################################################
echo #                                                                              #
echo #                   HSP Prompt OS 1.5.0 beta �ւ悤����!                       #
echo #                                                                              #
echo #                                                                              #
echo #  HSP Prompt OS �Ƃ́AMikatoFu31 ��1�l�ŊJ�����Ă���R���\�[���c�[���ł��B    #
echo #                                                                              #
echo #                                                                              #
echo #  �R�}���h��g�ݍ��킹�邱�Ƃɂ���āA�l�X�ȑ�������邱�Ƃ��ł��܂��B        #
echo #                                                                              #
echo # ���Ȃ��͂����̃R�}���h�𗘗p���āAHSP Prompt OS ���g�����Ȃ��A             #
echo #                                                                              #
echo # ��Ƃ�������������A�R���\�[���ɐe���񂾂肷�邱�Ƃ��ł��܂��B               #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                 Enter �L�[�Ŏ��̃y�[�W��     #
echo ################################################################################
echo
echo Enter �L�[�������Ă�������:
label againask1
input ynask
goto step3

label step3
cls
echo
echo ################################################################################
echo #                                                                              #
echo #                            HSP PROMPT OS TOUR                                #
echo #                                                                              #
echo ################################################################################
echo #                                                                              #
echo # ���Ȃ��̓X�N���v�g�������āA��Ƃ��������ł��܂��B                           #
echo #                                                                              #
echo #                                                                              #
echo # ���Ȃ��������̂�肽���R�}���h���t�@�C���ɗ񋓂���ƁA���̃R�}���h��         #
echo #                                                                              #
echo # script ���߂ŌĂяo���āA���x�ł����s���邱�Ƃ��ł��܂��B                    #
echo #                                                                              #
echo # ��������̃t�@�C�����R�s�[������A                                           #
echo #                                                                              #
echo # ��������Ԃɕ\��������A                                                     #
echo #                                                                              #
echo # �V�X�e���̐ݒ��������������A                                               #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo # ...�ȂǁA�߂�ǂ�������Ƃ�S�Ď����ł����邱�Ƃ��ł��܂�!                   #
echo #                                                                              #
echo #                                                                              #
echo #                                                 Enter �L�[�Ŏ��̃y�[�W��     #
echo ################################################################################
echo
echo Enter �L�[�������Ă�������:
label againask1
input ynask
goto step3

label step3
cls
echo
echo ################################################################################
echo #                                                                              #
echo #                            HSP PROMPT OS TOUR                                #
echo #                                                                              #
echo ################################################################################
echo #                                                                              #
echo # ���Ȃ��̓X�N���v�g�����̏ꏊ�ɕۑ����邱�Ƃɂ��A�R�}���h�𑝂₷         #
echo #                                                                              #
echo # ���Ƃ��ł��܂��B                                                             #
echo #                                                                              #
echo #                                                                              #
echo # ����ɂ��A�u���̃p�^�[���������...�v�Ƃ����悤�Ȃ��̂��ė��p������A      #
echo #                                                                              #
echo # �����ŃR�}���h��łƂ��ɑł񐔂����炵���肷�邱�Ƃ��ł��܂�!            #
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
echo #                                                 Enter �L�[�Ŏ��̃y�[�W��     #
echo ################################################################################
echo
echo Enter �L�[�������Ă�������:
label againask1
input ynask
goto step4


label step4
cls
echo
echo ################################################################################
echo #                                                                              #
echo #                            HSP PROMPT OS TOUR                                #
echo #                                                                              #
echo ################################################################################
echo #                                                                              #
echo # ���́A���܂Ō����Ă����X�N���v�g�֘A�̂��Ƃ́A���̂܂܂ł͂ł��܂���B       #
echo #                                                                              #
echo # install �R�}���h�𗘗p���āA�ʂ̏ꏊ�ɃC���X�g�[�����Ă���S�Ă͎n�܂�܂��B #
echo #                                                                              #
echo #                                                                              #
echo # �c�A�[���I�������A�R�}���h���C���ɁA                                       #
echo #                                                                              #
echo # install                                                                      #
echo #                                                                              #
echo # �Ƒł��āAEnter �L�[�������ƁA�C���X�g�[���[���n�܂�AHSP Prompt OS ��       #
echo #                                                                              #
echo # �C���X�g�[�����邱�Ƃ��ł��܂��B                                             #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                 Enter �L�[�Ŏ��̃y�[�W��     #
echo ################################################################################
echo
echo Enter �L�[�������Ă�������:
label againask1
input ynask
goto step5


label step5
cls
echo
echo ################################################################################
echo #                                                                              #
echo #                            HSP PROMPT OS TOUR                                #
echo #                                                                              #
echo ################################################################################
echo #                                                                              #
echo # ���Ȃ��͋���������΁AHSPPO�̊J���ɎQ�����邱�Ƃ��ł��܂��B                  #
echo #                                                                              #
echo #                                                                              #
echo # �uPHP Prompt OS�v�R�~���j�e�B�[�ŊJ�����Ă��܂��B���񗈂Ă݂Ă�������!!      #
echo #  ��                                                                          #
echo #  plus.google.com/u/0/communities/100217157498907688708                       #
echo #                                                                              #
echo #  HSPPO ���� Twitter : twitter.com/mikatofu_sftwr                             #
echo #                                                                              #
echo #  HSPPO �������[�� : mikatofuservice@gmail.com                                #
echo #                                                                              #
echo #  �t�@�����^�[ �A�h�o�C�X �o�O�� �Ȃ�ł���낵��!                          #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                 Enter �L�[�Ŏ��̃y�[�W��     #
echo ################################################################################
echo
echo Enter �L�[�������Ă�������:
label againask1
input ynask
goto step6

label step6
cls
echo
echo ################################################################################
echo #                                                                              #
echo #                            HSP PROMPT OS TOUR                                #
echo #                                                                              #
echo ################################################################################
echo #                                                                              #
echo # �c�A�[�͈ȏ�ŏI���ł��B                                                     #
echo #                                                                              #
echo # ����ł́AHSP Prompt OS �� ���y���݂�������!                                 #
echo #                                                                              #
echo #                                                                              #
echo # EEEEE  N    N JJJJJ  OOO Y     Y     H   H   SSSS   PPPP  PPPP   OOO    !!!! #
echo # E      NN   N   J   O   O Y   Y      H   H  SS      P   P P   P O   O   !!!! #
echo # EEEEE  N N  N   J   O   O   Y        HHHHH    SS    PPPP  PPPP  O   O   !!!! #
echo # E      N  N N J J   O   O   Y        H   H      SS  P     P     O   O        #
echo # EEEEE  N   NN  J     OOO    Y        H   H  SSSSS   P     P      OOO     !!  #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo # �ӎ�:����HSP Prompt OS �J���O���[�v�́AHSP Prompt OS  �� �J�� �e�X�g         #
echo #      �ŋ��͂��Ă������������A������HSP Prompt OS ���x�����Ă���������        #
echo #      �S�Ă̐l�X�Ɋ��Ӓv���܂��B                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                 Enter �L�[�ŏI��             #
echo ################################################################################
echo
echo Enter �L�[�������Ă�������:
label againask1
input ynask
goto end



label end
cls
setvalue echo.backcolor black

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
echo # HSP PROMPT OS 1.5.0 インストーラーへようこそ!                                #
echo # このプログラムは、お使いのPC、またはリムーバブルメディアにHSP PROMPT OS を   #
echo # インストールするものです。このプログラムを利用してインストールすることにより #
echo # あなたはHSP PROMPT OSをあなた自身の環境で利用し、また、アプリケーションを    #
echo # 追加、または自作することが可能です。そしてその環境を運用することができます。 #
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
echo インストールを続行しますか?(Y/N):
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
echo # インストールのタイプを指定してください:                                      #
echo #                                                                              #
echo # 1.新規インストール                                                           #
echo #                                                                              #
echo # 2.インストールの中止と終了                                                   #
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
echo 指定してください(1/2):

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
echo # 新規インストールをします。どのような構成でインストールしますか?:             #
echo #                                                                              #
echo # 1.インストール(標準)                                                         #
echo #                                                                              #
echo # 2.インストールの中止と終了                                                   #
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
echo 指定してください(1/2):

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
echo # HSP PROMPT OSをインストールする絶対フォルダパスを指定してください:           #
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
echo # ヒント:物理ドライブを指定したい場合は、例えばC:\を指定したい場合は、         #
echo #                                                                              #
echo # /drives/c:/                                                                  #
echo #                                                                              #
echo # のように、/drives/を前につけてください。                                     #
echo #                                                                              #
echo ################################################################################
echo
echo 指定してください:
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
echo # 以下の設定でHSP PROMPT OS 1.5.0 をインストールします:                        #
echo #                                                                              #
echo # フォルダ:%installpath%                                                       
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
echo # 注意!これが最終確認です。                                                    #
echo # すでにフォルダが存在する場合、既存のファイルを上書きする恐れがあります。     #
echo # それでもインストールしますか?                                                #
echo #                                                                              #
echo ################################################################################
echo
echo インストールしますか?(Y/N):
label againask5-1
input ynask
cmpif %ynask% y
goto step6-1
cmpif %ynask% n
goto end
goto againask5-1

label step6-1
cls
echo インストールを開始しています...
echo ファイルをコピーしています...
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
echo # インストールは正常に完了しました。                                           #
echo #                                                                              #
echo # インストールされたHSPPOを利用するには、いま開いたフォルダーの、              #
echo #                                                                              #
echo # HSPPO.EXE を実行してください。                                               #
echo #                                                                              #
echo # Enterキーでインストーラーを終了します。                                      #
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
echo #            HSP PROMPT OS を選んでいただきありがとうございます! by 開発者一同 #
echo #                                                                              #
echo ################################################################################
echo
echo
input ynask

label end
setvalue echo.backcolor black

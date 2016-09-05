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
echo #                   HSP Prompt OS 1.5.0 beta へようこそ!                       #
echo #                                                                              #
echo #                                                                              #
echo #  現在、HSP Prompt OS は、ゲストモードで動作しています。                      #
echo #                                                                              #
echo #                                                                              #
echo #  システムを改造して遊ぶには、installコマンドを利用して                       #
echo #                                                                              #
echo # インストールしてから起動してください。                                       #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo # HSP Prompt OS ツアーを実行できます。                                         #
echo #                                                                              #
echo # ツアーを開始しますか?                                                        #
echo #                                                                              #
echo # 開始しない場合は、このあとコマンドラインに移行します。                       #
echo #                                                                              #
echo #                                                                              #
echo ################################################################################
echo
echo 動作を選択してください(Y/N):
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
echo #                   HSP Prompt OS 1.5.0 beta へようこそ!                       #
echo #                                                                              #
echo #                                                                              #
echo #  HSP Prompt OS とは、MikatoFu31 が1人で開発しているコンソールツールです。    #
echo #                                                                              #
echo #                                                                              #
echo #  コマンドを組み合わせることによって、様々な操作をすることができます。        #
echo #                                                                              #
echo # あなたはそれらのコマンドを利用して、HSP Prompt OS を使いこなし、             #
echo #                                                                              #
echo # 作業を自動化したり、コンソールに親しんだりすることができます。               #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                 Enter キーで次のページへ     #
echo ################################################################################
echo
echo Enter キーを押してください:
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
echo # あなたはスクリプトを書いて、作業を自動化できます。                           #
echo #                                                                              #
echo #                                                                              #
echo # あなたが自分のやりたいコマンドをファイルに列挙すると、そのコマンドを         #
echo #                                                                              #
echo # script 命令で呼び出して、何度でも実行することができます。                    #
echo #                                                                              #
echo # たくさんのファイルをコピーしたり、                                           #
echo #                                                                              #
echo # 数列を順番に表示したり、                                                     #
echo #                                                                              #
echo # システムの設定を書き換えたり、                                               #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo # ...など、めんどくさい作業を全て自動でさせることができます!                   #
echo #                                                                              #
echo #                                                                              #
echo #                                                 Enter キーで次のページへ     #
echo ################################################################################
echo
echo Enter キーを押してください:
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
echo # あなたはスクリプトを特定の場所に保存することにより、コマンドを増やす         #
echo #                                                                              #
echo # ことができます。                                                             #
echo #                                                                              #
echo #                                                                              #
echo # これにより、「このパターン多いよな...」というようなものを再利用したり、      #
echo #                                                                              #
echo # 自分でコマンドを打つときに打つ回数を減らしたりすることができます!            #
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
echo #                                                 Enter キーで次のページへ     #
echo ################################################################################
echo
echo Enter キーを押してください:
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
echo # 実は、今まで言ってきたスクリプト関連のことは、今のままではできません。       #
echo #                                                                              #
echo # install コマンドを利用して、別の場所にインストールしてから全ては始まります。 #
echo #                                                                              #
echo #                                                                              #
echo # ツアーが終わったら、コマンドラインに、                                       #
echo #                                                                              #
echo # install                                                                      #
echo #                                                                              #
echo # と打って、Enter キーを押すと、インストーラーが始まり、HSP Prompt OS を       #
echo #                                                                              #
echo # インストールすることができます。                                             #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                 Enter キーで次のページへ     #
echo ################################################################################
echo
echo Enter キーを押してください:
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
echo # あなたは興味があれば、HSPPOの開発に参加することができます。                  #
echo #                                                                              #
echo #                                                                              #
echo # 「PHP Prompt OS」コミュニティーで開発しています。是非来てみてください!!      #
echo #  ↓                                                                          #
echo #  plus.google.com/u/0/communities/100217157498907688708                       #
echo #                                                                              #
echo #  HSPPO 公式 Twitter : twitter.com/mikatofu_sftwr                             #
echo #                                                                              #
echo #  HSPPO 公式メール : mikatofuservice@gmail.com                                #
echo #                                                                              #
echo #  ファンレター アドバイス バグ報告 なんでもよろしく!                          #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                 Enter キーで次のページへ     #
echo ################################################################################
echo
echo Enter キーを押してください:
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
echo # ツアーは以上で終了です。                                                     #
echo #                                                                              #
echo # それでは、HSP Prompt OS を お楽しみください!                                 #
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
echo # 謝辞:このHSP Prompt OS 開発グループは、HSP Prompt OS  の 開発 テスト         #
echo #      で協力してくださった方、そしてHSP Prompt OS を支援してくださった        #
echo #      全ての人々に感謝致します。                                              #
echo #                                                                              #
echo #                                                                              #
echo #                                                 Enter キーで終了             #
echo ################################################################################
echo
echo Enter キーを押してください:
label againask1
input ynask
goto end



label end
cls
setvalue echo.backcolor black

cmpif dev %@0%
goto dev_help
echo -----------コマンド一覧--------------
echo 
echo help:ヘルプを表示します。
echo echo:コンソールにメッセージを表示します。
echo date:現在の日時を表示します。
echo time:現在の時間を表示します。
echo exit:HSPPOを終了します。
echo cls:プロンプトを一番上にもってきます。
echo exec:Windowsアプリケーションを実行します。
echo script:スクリプトを実行します。/bin/フォルダ内のスクリプトはこのキーワードなし
echo        で実行できます。
echo wait:一定時間スクリプトの実行を停止します。単位はミリ秒です。
echo goline:スクリプト実行中に、行番号指定でジャンプします。
echo ls:カレントディレクトリ中のディレクトリとファイルを表示します。
echo ver:HSPPOのバージョンを表示します。
echo cat:ファイルの内容を表示します。
echo setvalue:変数の内容を書き換えます。
echo aevalue:変数に追記します。
echo rem:何もしません。コメントを書く時に使用します。
echo cmpif:2つの文字列が同じか、そうでないかによって分岐処理を行います。
echo input:ユーザーの入力した文字列を環境変数に代入します。
echo cd:カレントディレクトリーを変更します。
echo install:HSPPOをインストールします。
help_info
goto END


label dev_help

echo -----------コマンド一覧--------------
echo system'reset:cls命令の仮実装のための命令です。現在cls命令と同じです。
echo read:ファイルを環境変数@readに読み込みます。
echo write:指定された環境変数のファイルを任意のファイルに書き出します。
echo delline:環境変数の指定した行を削除します。
help_end

label END
# vscode-insiders_config
<p>自分用vscode-insidersの設定</p>

<h2>要件</h2>
<p>Windows</p>
<p>特にビルドとかする予定はない。ターミナル重視</p>
<p>powershell使いたい</p>
<p>シェル内包型エディタは苦手なのでエディタ内包型シェルにしたい</p>
<p>powershell<->vscode-insider間のやり取りをシームレスにしたい</p>
<p>grep,touch使いたい</p>

<h2>初期設定</h2>
<p>vscode-insidersをインストール<p>
<p>vscode-insidersでユーザー設定を開く</p>
<pre>Ctrl + Shift + p</pre>
<pre>"setting"と入力</pre>
<p>vscode-insidersのユーザー設定に<a href="https://github.com/TsudaRyotaro/vscode-insiders_config/blob/master/settings.json">settings.json</a>をコピペ。デフォルトの端末をpowershellに変更するためにパスを通す</p>
<p>powershellを管理者権限で起動　右クリックから</p>
<p>$profile作成</p>
<pre>$profile</pre>
<p>出てきたパスに同様の名前のファイルを新規作成する</p>
<p>実行ポリシーの関係からデフォルトでは外部スクリプトを参照できないので<a href="http://www.atmarkit.co.jp/ait/articles/0805/16/news139.html">実行ポリシー変更</a></p>
</pre>Set-ExecutionPolicy RemoteSigned</pre>
<p>何か聞かれたらY</p>
<p>powershellで</p>
<pre>notepad $profile</pre>
<p>を実行。notepadが出てきたら<a href="https://github.com/TsudaRyotaro/vscode-insiders_config/blob/master/profile.ps1">profile.ps1</a>をコピペ<p>
<p>code-insidersを管理者権限で実行。端末を起動するとできてるはず</p>
<p>touch.ps1,touchcode.ps1を$profileと同じ階層に新規作成</p>
<p>それぞれ(<a href="https://github.com/TsudaRyotaro/vscode-insiders_config/blob/master/touch.ps1">touch.ps1</a>,<a href="https://github.com/TsudaRyotaro/vscode-insiders_config/blob/master/touchcode.ps1">touchcode.ps1</a>)コピペ(データそのものをコピーすると署名が別なので実行ポリシーではじかれる)</p>
<p>code-insidersの端末から<p>
<pre>code $profile</pre>
<p>パスをそれぞれ通す</p>
<p>touchコマンド、tcodeコマンドが使えるはず</p>


<h2>機能</h2>
<p>code [ファイル名]でvscode-insiders上でファイルが開きます。新規でウィンドウが立ち上がらないので煩雑にならないうえターミナル＜－＞エディター間がシームレスに</p>
<p>grepコマンド使えます。内部的にpowershellのコマンドを呼んでいるだけなので少しクセが有ります</p>
<p>touchコマンド使えます。touch [ファイル名]で今いるディレクトリにファイルつくります。-ItemTypeはfileです。niコマンド使うとItemTypeも選べます  </p>
<p>tcodeコマンドつくりました。tcode [ファイル名]で今いるディレクトリにファイルを新規作成してvscode-insidersで開きます。個人的にとても便利</p>
<p>起動すると今vscode-insidersで参照しているディレクトリがカレントディレクトリになってターミナルに反映されます。いちいち移動しなくてよいのでこれくっそ便利</p>
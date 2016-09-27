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
<p>vscode-insidersをインストール。touch.ps1, touchcode.ps1を任意のディレクトリに配置<p>
<p>vscode-insidersのsettings.jsonを書き換え</p>
<p>powershellで</p>
<pre>notepad $profile</pre>
<p>を実行。notepadが出てきたらprofile.ps1をコピペ<p>
<p>settings.jsonおよびprofileのパスを通す</p>
<p>実行ポリシーの関係からデフォルトでは外部スクリプトを参照できないので<a href="http://www.atmarkit.co.jp/ait/articles/0805/16/news139.html">実行ポリシー変更</a></p>

<h2>機能</h2>
<p>code [ファイル名]でvscode-insiders上でファイルが開きます。新規でウィンドウが立ち上がらないので煩雑にならないうえターミナル＜－＞エディター間がシームレスに</p>
<p>grepコマンド使えます。内部的にpowershellのコマンドを呼んでいるだけなので少しクセが有ります</p>
<p>touchコマンド使えます。touch [ファイル名]で今いるディレクトリにファイルつくります。-ItemTypeはfileです。niコマンド使うとItemTypeも選べます  </p>
<p>tcodeコマンドつくりました。tcode [ファイル名]で今いるディレクトリにファイルを新規作成してvscode-insidersで開きます。個人的にとても便利</p>
<p>起動すると今vscode-insidersで参照しているディレクトリがカレントディレクトリになってターミナルに反映されます。いちいち移動しなくてよいのでこれくっそ便利</p>
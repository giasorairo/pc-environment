# キーボードの配置を最適化したい

1. control + [j,m,k,i] で矢印キー
1. control + q でbackspace
1. control + space でenter
1. windows + space で全角/半角切替

# 使用したツール
## AutoHotKey

### 手順
1. download
1. create setting file in desktop
  ```
  1.デスクトップ上で右クリックします。
  2.メニューの中から「新規」を探します。
  3.メニューの「新規」の中にある「AutoHotkey Script」をクリックします。
  4.スクリプトに新しい名前を付けます。拡張子は.ahkで終わる必要があります。例えば MyScript.ahk
  5.デスクトップ上で新しく作成したファイルを探し、右クリックします。
  6.「スクリプトの編集」をクリックします。
  7.メモ帳などのウィンドウが出てくるはずです。もしそうであれば、成功！です。
  スクリプトを作成したので、ファイルに何かを追加する必要があります。すべての組み込みコマンド、関数、変数のリストについては、セクション5を参照してください。
  ```
1. 作成した設定ファイルをダブルクリックしてスクリプト反映 > ダイアログが出てくるのでOK押下 > taskbarに```H```のアイコンが出ていれば反映されている
1. end

1. 操作が大丈夫そうだったら、windows起動時にスクリプトを自動で実行するように設定する
  1. windows key + R で```ファイル名を指定して実行```を起動 > ```shell:startup```と入力
  1. 開いたディレクトリに作成した設定ファイルのショートカットをコピペすれば完了

### 実際に書いたコード
```
;
!j::Send,{Left}
!k::Send,{Right}
!i::Send,{Up}
!m::Send,{Down}

; control key + 他のkey でのショートカット
^j::Send,^{Left}
^k::Send,^{Right}
^i::Send,^{Up}
^m::Send,^{Down}

; shift + control + [j,m,i,k]でshift + control + 矢印キー (主にvscode用)
+^j::Send,+^{Left}
+^k::Send,+^{Right}
+^i::Send,+^{Up}
+^m::Send,+^{Down}

^q::Send,{Backspace}

^Space::Send,{Enter}

; windows key + space key で全角/半角切替え
#Space::Send,{vkF3sc029}
```

### 参考にしたサイト

- [Windows 10 矢印キーに指を伸ばすエンジニアとバカにされた（Change KeyとAutoHotkeyの導入）](https://qiita.com/riekure/items/49b941fa5159f9948313)
  -  ダウンロード、設定ファイルの作成、自動起動設定、すべての流れが書かれている
- [『AutoHotkey』の使い方【入門編・初心者向け】](https://fuchiaz.com/usage-autohotkey/#i-8)
- [Windowsのキー操作をMacライクにする](https://qiita.com/digitarhythm/items/d5dcc1e714f794d26536)
- [ドキュメント](http://ahkwiki.net/KeyList)


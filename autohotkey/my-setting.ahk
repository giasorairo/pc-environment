;
!j::Send,{Left}
!k::Send,{Right}
!i::Send,{Up}
!m::Send,{Down}

; control key + 他のkey でのショートカット
;^j::Send,^{Left}
^k::Send,^{Right}
^i::Send,^{Up}
^m::Send,^{Down}

; shift + control + [j,m,i,k]でshift + control + 矢印キー (主にvscode用)
+^j::Send,+^{Left}
+^k::Send,+^{Right}
+^i::Send,+^{Up}
+^m::Send,+^{Down}

^q::Send,{Backspace}

;controlKey + spaceKeyは vscodeのインテリセンス表示で使うのでコメントアウト
;^Space::Send,{Enter}

; windows key + space key で全角/半角切替え
#Space::Send,{vkF3sc029}

;; C++ style
(add-hook 'c++-mode-hook
		  '(lambda()
             ;(c-set-style "element")
			 (setq indent-tabs-mode nil)     ; インデントは空白文字で行う（TABコードを空白に変換）
			 (c-set-offset 'innamespace 0)   ; namespace {}の中はインデントしない
			 (c-set-offset 'arglist-close 0))) ; 関数の引数リストの閉じ括弧はインデントしない

;(add-hook 'c-mode-common-hook
;          '(lambda ()
;             ;; RET キーで自動改行+インデント
;             (setq c-auto-newline t)))

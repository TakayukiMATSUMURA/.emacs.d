;;; キーバインド
;; C-h バックスペース
(keyboard-translate ?\C-h ?\C-?)
;; 別のキーバインドにヘルプ
(define-key global-map (kbd "C-x ?") 'help-command)

;; C-m newline-and-indent
(global-set-key (kbd "C-m") 'newline-and-indent)

;; 折り返しトグルコマンド
(define-key global-map (kbd "C-c l") 'toggle-truncate-lines)

;; C-t ウインドウ切り替え
(define-key global-map (kbd "C-t") 'other-window)


(define-key global-map "\C-z" 'undo)                 ; undo
(define-key global-map "\C-ci" 'indent-region)       ; インデント
(define-key global-map "\C-c\C-i" 'dabbrev-expand)   ; 補完
(define-key global-map "\C-c;" 'comment-region)      ; コメントアウト
(define-key global-map "\C-c:" 'uncomment-region)    ; コメント解除
(define-key global-map "\C-o" 'toggle-input-method)  ; 日本語入力切替
(define-key global-map "\C-\\" nil)                  ; \C-\の日本語入力の設定を無効にする

;; redo+
(when (require 'redo+ nil t)
  ;; C-. にリドゥを割り当てる
  (gloabal-set-key (kbd "C-.") 'redo))

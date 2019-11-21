;; カラム番号も表示
(column-number-mode t)

;; ファイルサイズを表示
(size-indication-mode t)

;; 時計を表示 (好みに応じてフォーマットを変更可能)
(setq display-time-day-and-date t)
(setq display-time-24hr-format t)
(display-time-mode t)

;; バッテリー残量を表示
;;(display-battery-mode t)

;; タイトルバーにファイルのフルパスを表示
(setq frame-title-format "%f")

;; 行番号を常に表示する
(global-linum-mode t)

;; 文字の色を設定します。
(add-to-list 'default-frame-alist '(foreground-color . "Green"))

;; 背景色を設定します。
(add-to-list 'default-frame-alist '(background-color . "black"))

;; カーソルの色を設定します。
(add-to-list 'default-frame-alist '(cursor-color . "Red"))

;;; カーソルの点滅を止める
(blink-cursor-mode 0)

;;; 現在行のハイライト
(global-hl-line-mode t)
(setq hl-line-face 'underline)

;; 対応する括弧のハイライト
(setq show-paren-delay 0)
(show-paren-mode t)
(setq show-paren-style 'mixed)

;; バックアップファイルを作らない
(setq make-backup-files nil)
(setq auto-save-default nil)

;; オートセーブファイル作成までの秒間隔
;;(setq auto-save-timeout 15)
;; オートセーブファイル作成までのタイプ間隔
;;(setq auto-save-interval 60)

;;ファイル名の補完で大文字小文字を区別しない
(setq completion-ignore-case t)

;;バッファ自動再読み込み
(global-auto-revert-mode 1)

;; リージョンに色をつける
(setq transient-mark-mode t)

;;ようこそ画面を表示しない
(setq inhibit-startup-message t)

;; scratchの初期メッセージ消去
(setq initial-scratch-message "")

;;; メニューバーを非表示
(cond ((not (eq window-system nil)) (tool-bar-mode 0)))

;;; 終了時にオートセーブファイルを消す
(setq delete-auto-save-files t)

;;複数ウィンドウを開かないようにする
(setq ns-pop-up-frames nil)

;; yes or noをy or n
(fset 'yes-or-no-p 'y-or-n-p)

;; C-kで行全体を削除
(setq kill-whole-line t)

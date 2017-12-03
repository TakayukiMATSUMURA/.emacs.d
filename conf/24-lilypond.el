;; LilyPond mode
(require 'lilypond-mode)
(add-to-list 'auto-mode-alist '("\\.ly\\'" . LilyPond-mode))
(add-hook 'LilyPond-mode-hook 'turn-on-font-lock)

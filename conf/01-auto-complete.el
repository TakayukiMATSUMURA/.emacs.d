;; auto-complete
(require 'auto-complete)
(require 'auto-complete-config)
(require 'fuzzy) ;; fuzzy search (heaby)
(setq ac-use-fuzzy t)
(global-auto-complete-mode t)
(ac-config-default)
(setq ac-delay 0)
(setq ac-auto-show-menu 0.05)
(setq ac-use-menu-map t)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elisp/ac-dict")

(add-to-list 'ac-modes 'csharp-mode)
(add-to-list 'ac-modes 'ruby-mode)
(add-to-list 'ac-modes 'python-mode)
(add-to-list 'ac-modes 'swift-mode)
(add-to-list 'ac-modes 'elixir-mode)

(setq ac-menu-height 25) ;; ちょっと大きめにとりましょう！
(setq ac-auto-start 2) ;; 個人的には3でもいいかも
(setq ac-ignore-case t)

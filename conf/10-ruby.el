;; ruby
(autoload 'ruby-mode "ruby-mode" "Mode for editing ruby source files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))

(add-hook 'ruby-mode-hook
          '(lambda ()
             (ruby-electric-mode t)
             (ruby-block-mode t)
             ))

(add-hook 'ruby-mode-hook 'robe-mode)
(autoload 'robe-mode "robe" "Code navigation, documentation lookup and completion for Ruby" t nil)
(add-hook 'robe-mode-hook 'ac-robe-setup)
(autoload 'ac-robe-setup "ac-robe" "auto-complete robe" nil nil)

(require 'ruby-electric)
(setq ruby-electric-expand-delimiters-list nil)

(require 'ruby-block)
(defcustom ruby-block-delay 0
  "*Time in seconds to delay before showing a matching paren."
  :type  'number
  :group 'ruby-block)

;; rbenvパス設定
(require 'rbenv)
(setq rbenv-installation-dir "~/.rbenv")

(require 'inf-ruby)
(setq inf-ruby-default-implementation "pry")
(autoload 'inf-ruby "inf-ruby" "Run an inferior Ruby process" t)
(add-hook 'ruby-mode-hook 'inf-ruby-minor-mode)

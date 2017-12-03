;; auto-complete
(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)
(ac-config-default)

(add-to-list 'load-path "~/.emacs.d/elisp/")
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elisp/ac-dict")

(when (require 'auto-complete-config nil t)
  (add-to-list 'ac-dictionary-directories
               "~/.emacs.d/elisp/ac-dict")
  (define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
  (ac-config-default))

(require 'auto-complete-latex)
(setq ac-l-dict-directory "/path/to/ac-l-dict/")
(add-to-list 'ac-modes 'foo-mode)
(add-hook 'foo-mode-hook 'ac-l-setup)

(add-to-list 'ac-modes 'csharp-mode)
(add-to-list 'ac-modes 'ruby-mode)
(add-to-list 'ac-modes 'swift-mode)
(add-to-list 'ac-modes 'elixir-mode)

;; c-mode, two space 'tab', replace tab with spaces
(setq-default tab-width 4)
(add-hook 'c-mode-common-hook
		  '(lambda()
			 (setq indent-tabs-mode nil) ; use 'spaces' instead of 'tab'
			 (setq c-basic-offset 4)))

(defun my-c-mode-common-hook () (c-set-style "java"))
(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)
(add-to-list 'auto-mode-alist '("\\.c\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.cpp\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.y\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.pl\\'" . perl-mode))
(add-to-list 'auto-mode-alist '("\\.rb\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.as\\'" . java-mode))
(add-to-list 'auto-mode-alist '("\\.cs\\'" . csharp-mode))
(add-to-list 'auto-mode-alist '("\\.scala\\'" . scala-mode2))
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'auto-mode-alist '("\\.exs\\'" . elixir-mode))

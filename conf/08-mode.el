;; c-mode, two space 'tab', replace tab with spaces
(setq-default tab-width 4)
(add-hook 'c-mode-common-hook
		  '(lambda()
			 (setq indent-tabs-mode nil) ; use 'spaces' instead of 'tab'
			 (setq c-basic-offset 4)))

(defun my-c-mode-common-hook () (c-set-style "java"))
(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

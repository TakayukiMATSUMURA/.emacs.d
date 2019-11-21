(require 'flycheck)
(global-flycheck-mode)

(with-eval-after-load 'flycheck
  (flycheck-pos-tip-mode))

(define-key global-map (kbd "\C-cn") 'flycheck-next-error)
(define-key global-map (kbd "\C-cp") 'flycheck-previous-error)
(define-key global-map (kbd "\C-cd") 'helm-flycheck)
;;(define-key global-map (kbd "\C-cd") 'flycheck-list-errors)

;; ruby
(add-hook 'ruby-mode-hook
          '(lambda ()
             (setq flycheck-checker 'ruby-rubocop)
             (flycheck-mode 1)))

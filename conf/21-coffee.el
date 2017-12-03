;;; 21-coffee.el ---                                 -*- lexical-binding: t; -*-

;; Copyright (C) 2015  Takayuki Matsumura

;; Author: Takayuki Matsumura <TakayukiMatsumura@Takayuki-no-MacBook-Pro.local>
;; Keywords:

(require 'coffee-mode)
(defun coffee-custom ()
  "coffee-mode-hook"
  (and (set (make-local-variable 'tab-width) 2)
       (set (make-local-variable 'coffee-tab-width) 2))
  )

(add-hook 'coffee-mode-hook
          '(lambda() (coffee-custom)))

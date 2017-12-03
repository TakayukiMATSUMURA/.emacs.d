;;; 27-elixir.el ---                                 -*- lexical-binding: t; -*-

;; Copyright (C) 2017  Takayuki Matsumura

;; Author: Takayuki Matsumura <TakayukiMatsumura@Takayuki-no-MacBook-Pro.local>
;; Keywords:

(require 'elixir-mode)
(add-to-list 'elixir-mode-hook
             (defun auto-activate-ruby-end-mode-for-elixir-mode ()
               (require 'alchemist)
               (require 'flycheck-elixir)
               
               (set (make-variable-buffer-local 'ruby-end-expand-keywords-before-re)
                    "\\(?:^\\|\\s-+\\)\\(?:do\\)")
               (set (make-variable-buffer-local 'ruby-end-check-statement-modifiers) nil)
               (ruby-end-mode +1)
               
               (ac-alchemist-setup)
               ))

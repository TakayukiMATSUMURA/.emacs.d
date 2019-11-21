;;; 26-go.el ---                                     -*- lexical-binding: t; -*-

;; Copyright (C) 2016  Takayuki Matsumura

;; Author: Takayuki Matsumura <TakayukiMatsumura@Takayuki-no-MacBook-Pro.local>
;; Keywords:

(add-to-list 'exec-path (expand-file-name "~/homebrew/bin"))
(add-to-list 'exec-path (expand-file-name "~/.go/bin"))

(require 'go-mode)
(autoload 'go-mode "go-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))

(eval-after-load "go-mode" '(progn (require 'go-autocomplete)))

(require 'exec-path-from-shell)
(let ((envs '("PATH" "GOPATH")))
  (exec-path-from-shell-copy-envs envs))

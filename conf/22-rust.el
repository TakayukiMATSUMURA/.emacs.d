;;; 22-rust.el ---                                   -*- lexical-binding: t; -*-

;; Copyright (C) 2015  Takayuki Matsumura

;; Author: Takayuki Matsumura <TakayukiMatsumura@Takayuki-no-MacBook-Pro.local>
;; Keywords:

;(add-to-list 'load-path "../elisp/to/rust-mode/")
(require 'rust-mode)
(autoload 'rust-mode "rust-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

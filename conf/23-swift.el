;;; 23-swift.el ---                                   -*- lexical-binding: t; -*-

;; Copyright (C) 2015  Takayuki Matsumura

;; Author: Takayuki Matsumura <TakayukiMatsumura@Takayuki-no-MacBook-Pro.local>
;; Keywords:

(require 'swift-mode)
(autoload 'swift-mode "swift-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.swift\\'" . swift-mode))

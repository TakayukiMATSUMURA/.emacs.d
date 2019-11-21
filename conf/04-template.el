;; プログラムソースコードの雛形に関する設定
(require 'autoinsert)
(add-hook 'find-file-hooks 'auto-insert)
(setq auto-insert-query nil)
;; テンプレートのディレクトリ
(setq auto-insert-directory "~/.emacs.d/template/")
(setq auto-insert-query nil) ;; テンプレート挿入時に尋ねない

;; 各ファイルによってテンプレートを切り替える
(setq auto-insert-alist
      (nconc '(
			   ("\\.rb$" . ["template.rb" my-template])
               ("\\.py$" . ["template.py" my-template])
               ("\\.pyx$" . ["template.pyx" my-template])
			   ("\\.java$" . ["template.java" my-template])
			   ("\\.scala$"   . ["template.scala" my-template])
               ("\\.cc$" . ["template.cc" my-template])
               ("\\.cpp$" . ["template.cc" my-template])
               ("\\.c$" . ["template.c" my-template])
               ("\\.h$"   . ["template.h" my-template])
               ("\\.cs$"   . ["template.cs" my-template])
			   ("\\.tex$"   . ["template.tex" my-template])
			   ("\\.html$"   . ["template.html" my-template])
               ) auto-insert-alist))

;; クラス名などをファイル名から取得
(defvar template-replacements-alists
  '(("%file%"             . (lambda () (file-name-nondirectory (buffer-file-name))))
    ("%file-without-ext%" . (lambda () (file-name-sans-extension (file-name-nondirectory (buffer-file-name)))))
	("%namespace%" . (lambda () (setq namespace (read-from-minibuffer "namespace: "))))
	("%classname%" . (lambda () (capitalize (file-name-sans-extension (file-name-nondirectory (buffer-file-name))))))
	("%java-classname%" . (lambda () (file-name-sans-extension (file-name-nondirectory (buffer-file-name)))))
    ("%include-guard%"    . (lambda () (format "%s_H" (upcase (file-name-sans-extension (file-name-nondirectory buffer-file-name))))))
	("%namespace-open%" .
     (lambda ()
       (cond ((string= namespace "") "")
             (t (progn
                  (setq namespace-list (split-string namespace "::"))
                  (setq namespace-text "")
                  (while namespace-list
                    (setq namespace-text (concat namespace-text "namespace "
                                                 (car namespace-list) " {"))
                    (setq namespace-list (cdr namespace-list))
                    )
                  (eval namespace-text))))))
    ("%namespace-close%" .
     (lambda ()
       (cond ((string= namespace "") "")
             (t (progn
                  (setq namespace-list (reverse (split-string namespace "::")))
                  (setq namespace-text "")
                  (while namespace-list
                    ;;(setq namespace-text (concat namespace-text "} // " (car namespace-list)))
                    (setq namespace-text (concat namespace-text "}"))
                    (setq namespace-list (cdr namespace-list))
                    )
                  (eval namespace-text))))))
	)
  )

(defun my-template ()
  (time-stamp)
  (mapc #'(lambda(c)
            (progn
              (goto-char (point-min))
              (replace-string (car c) (funcall (cdr c)) nil)))
        template-replacements-alists)
  (goto-char (point-max))
  (message "done."))

;;; init-json --- Summary

;;; Commentary:
;;; Configuration for json-mode

;;; Code:

(defun indent-buffer ()
  (interactive)
  (mark-whole-buffer)
  (json-pretty-print-buffer)
  (message "formatted"))

(eval-after-load "json-mode"
  '(progn
     (global-set-key (kbd "C-M-l") nil) ;; unset the global key
     (define-key json-mode-map (kbd "C-M-l") 'indent-buffer)))

(add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))

;; load json-mode for config files that are JSON like
(add-to-list 'auto-mode-alist '(".babelrc" . json-mode))
(add-to-list 'auto-mode-alist '(".eslintrc" . json-mode))
(add-to-list 'auto-mode-alist '(".jshintrc" . json-mode))
(add-to-list 'auto-mode-alist '(".tern-project" . json-mode))

(provide 'init-json)
;;; init-json ends here

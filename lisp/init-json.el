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


(provide 'init-json)
;;; init-json ends here

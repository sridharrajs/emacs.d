;;; init-xml --- Summary
;;; Commentary:

;;; Configuration for XML mode

;;; Code:

(add-to-list 'auto-mode-alist '("\\.xml\\'" . nxml-mode))

(defun indent-buffer ()
  (interactive)
  (mark-whole-buffer)
  (indent-for-tab-command)
  (message "formatted"))

(eval-after-load "nxml-mode"
  '(progn
     (global-set-key (kbd "C-M-l") nil) ;; unset the global key
     (define-key nxml-mode-map (kbd "C-M-l") 'indent-buffer)))


(provide 'init-xml)
;;; init-xml ends here

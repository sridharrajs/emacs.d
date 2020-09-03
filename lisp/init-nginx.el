;;; init-nginx --- Summary
;;; Commentary:

;; Configurations for nginx-mode

;;; Code:

(require 'nginx-mode)

(use-package company-nginx
	     :ensure t
	     :config
	     (eval-after-load 'nginx-mode
	       '(add-hook 'nginx-mode-hook #'company-nginx-keywords))
	     )

(add-to-list 'auto-mode-alist '("\\.conf\\'" . nginx-mode))

(defun indent-nginx-buffer ()
  (interactive)
  (mark-whole-buffer)
  (indent-for-tab-command)
  (message "formatted js"))

(eval-after-load "nginx-mode"
  '(progn
     (global-set-key (kbd "C-M-l") nil) ;; unset the global key
     (define-key nginx-mode-map (kbd "C-M-l") 'indent-nginx-buffer)))

(provide 'init-nginx)
;;; init-nginx ends here

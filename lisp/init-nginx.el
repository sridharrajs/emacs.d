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

(provide 'init-nginx)
;;; init-nginx ends here

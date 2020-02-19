;;; init-company --- Summary

;;; Commentary:
;;; company-mode configuration

;;; Code:

(add-hook 'after-init-hook 'global-company-mode)

(setq tab-always-indent 'complete)

(provide 'init-company)
;;; init-company ends here

;;; init-flycheck --- Summary

;;; Commentary:
;;; Flycheck configuration

;;; Code:

(add-hook 'after-init-hook #'global-flycheck-mode)
(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode)

(provide 'init-flycheck)
;;; init-flycheck ends here

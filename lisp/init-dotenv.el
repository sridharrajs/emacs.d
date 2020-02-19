;;; init-dotenv --- Summary

;;; Commentary:
;;; dot environment configurations

;;; Code:

(require 'dotenv-mode) ; unless installed from a package
(add-to-list 'auto-mode-alist '("\\.env\\..*\\'" . dotenv-mode)) ;; for optionally supporting additional file extensions such as `.env.test' with this major mode

(provide 'init-dotenv)
;;; init-dotenv ends here

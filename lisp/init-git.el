;;; init-git --- Summary

;;; Commentary:
;;; Configuration for ignore files in general

;;; Code:

(add-to-list 'auto-mode-alist '("/.gitignore\\'" . gitignore-mode))
(add-to-list 'auto-mode-alist '("/.eslintignore\\'" . gitignore-mode)) ;; follows the same ignore standard

(provide 'init-git)
;;; init-git ends here

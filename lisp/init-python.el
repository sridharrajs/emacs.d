;;; init-python --- Summary

;;; Commentary:
;;; Configuration for Python

;;; Code:

(add-to-list 'auto-mode-alist '("\\.py\\'" . elpy))
(add-hook 'py-mode-hook  'autopair-mode)

(provide 'init-python)
;;; init-python ends here

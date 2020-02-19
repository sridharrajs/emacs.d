;;; init-css --- Summary

;;; Commentary:
;;; Configuration for css-mode

;;; Code:

(add-hook 'css-mode-hook  'emmet-mode)
(add-hook 'css-mode-hook  'autopair-mode)

(provide 'init-css)
;;; init-css ends here

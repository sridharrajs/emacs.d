;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; HTML configurations

(add-to-list 'auto-mode-alist '("\\.html\\'" . html-mode))

(add-hook 'html-mode-hook  'emmet-mode)
(add-hook 'html-mode-hook  'autopair-mode)

(provide 'init-html)

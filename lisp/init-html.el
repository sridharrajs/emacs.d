;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; HTML configurations

(add-to-list 'auto-mode-alist '("\\.html\\'" . sgml-mode))

(add-hook 'sgml-mode-hook  'autopair-mode)
(add-hook 'sgml-mode-hook  'emmet-mode)

(provide 'init-html)

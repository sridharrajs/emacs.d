;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; javascript configurations

(setq-default js-indent-level 2)
(setq-default js2-basic-offset 2)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(add-hook 'js2-mode-hook (lambda () (setq js2-basic-offset 2)))
(add-hook 'js2-mode-hook  'autopair-mode)
(add-hook 'js2-mode-hook 'my-js-hook)
(add-hook 'js2-mode-hook 'electric-operator-mode)

(provide 'init-js)

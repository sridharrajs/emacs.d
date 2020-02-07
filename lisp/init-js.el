;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; javascript configurations

(setq-default js-indent-level 2)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(add-hook 'js2-mode-hook  'autopair-mode)

(defun my-js-hook ()
  (local-set-key "," '(lambda () (interactive) (insert ", "))))

(add-hook 'js2-mode-hook 'my-js-hook)
(add-hook 'js2-mode-hook 'electric-operator-mode)

(provide 'init-js)

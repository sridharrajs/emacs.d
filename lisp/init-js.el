;;; init-js --- Summary

;;; Commentary:
;;; JavaScript configurations

;;; Code:

(setq-default js-indent-level 2)
(setq-default js2-basic-offset 2)

;; load js2-mode for all js related file extenstion
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.mjs\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . js2-jsx-mode))

(add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))

;; load json-mode for config files that are JSON like
(add-to-list 'auto-mode-alist '(".babelrc" . json-mode))
(add-to-list 'auto-mode-alist '(".eslintrc" . json-mode))
(add-to-list 'auto-mode-alist '(".jshintrc" . json-mode))

(eval-after-load 'tern
   '(progn
      (require 'tern-auto-complete)
      (tern-ac-setup)))

(setq js2-highlight-level 3)

(add-hook 'js2-mode-hook (lambda () (setq js2-basic-offset 2)))
(add-hook 'js2-mode-hook  'autopair-mode)
(add-hook 'js2-mode-hook 'electric-operator-mode)
(add-hook 'js2-mode-hook 'tern-mode)
(add-hook 'js2-mode-hook 'tern-auto-complete)
(add-hook 'js2-mode-hook 'ac-complete)
(add-hook 'js2-mode-hook 'company-tern)

(provide 'init-js)
;;; init-js ends here

;;; init-markdown --- Summary

;;; Commentary:
;;; Markdown mode configuration

;;; Code:

;; for markdown-preview to work, 
;; you need to have `markdown` installed system wide
;; brew install markdown # on mac
;; sudo apt install markdown # on GNU/Linux system

(eval-after-load "markdown-mode"
  '(progn
     (define-key markdown-mode-map (kbd "<f5>") 'markdown-preview)))

(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(provide 'init-markdown)
;;; init-markdown ends here

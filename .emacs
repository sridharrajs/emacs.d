(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; move line up
(defun move-line-up ()
  (interactive)
  (transpose-lines 1)
  (previous-line 2))

(global-set-key [(control shift up)] 'move-line-up)

;; move line down
(defun move-line-down ()
  (interactive)
  (next-line 1)
  (transpose-lines 1)
  (previous-line 1))

(global-set-key [(control shift down)] 'move-line-down)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wombat)))
 '(sr-speedbar-right-side nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

(require 'js2-refactor)
(js2r-add-keybindings-with-prefix "C-c C-m")
(add-hook 'js2-mode-hook #'js2-refactor-mode)

(require 'sr-speedbar)
(setq speedbar-show-unknown-files t) ;; show all file
(setq speedbar-directory-unshown-regexp "^\\(CVS\\|RCS\\|SCCS\\|\\.\\.*$\\)\\'")

(global-linum-mode 1)

(add-hook 'markdown-mode-hook 'count-words)

(global-set-key [f8] 'sr-speedbar-toggle)
(custom-set-variables '(speedbar-show-unknown-files t))

(windmove-default-keybindings)

(global-set-key [M-left] 'windmove-left)          ; move to left window
(global-set-key [M-right] 'windmove-right)        ; move to right window
(global-set-key [M-up] 'windmove-up)              ; move to upper window
(global-set-key [M-down] 'windmove-down)          ; move to lower window
(setq sr-speedbar-width 30)

;; editor config plugin
;;(use-package editorconfig
;;  :ensure t
;;  :init
;;  (add-hook 'prog-mode-hook (editorconfig-mode 1))
;;  (add-hook 'text-mode-hook (editorconfig-mode 1)))

;; attemping to use my own tabs
(defun my-tabs-stuff ()
  (setq indent-tabs-mode t)
  (setq tab-stop-list (number-sequence 2 200 2))
  (setq tab-width 2)
  (setq indent-line-function 'insert-tab))

(add-hook 'js2-mode-hook 'ac-js2-mode)
(add-hook 'js2-mode-hook 'linum-mode)
(add-hook 'js2-mode-hook 'markdown-mode)
(add-hook 'js2-mode-hook 'json-mode)
(add-hook 'js2-mode-hook 'my-tabs-stuff)
(add-hook 'js2-mode-hook 'editorconfig-domain-specific)

(require 'whitespace)


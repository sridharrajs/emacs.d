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
 '(speedbar-show-unknown-files t)
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

;; speed-settings
(require 'sr-speedbar)
(global-set-key [f8] 'sr-speedbar-toggle)
(setq speedbar-show-unknown-files t) ;; show all file
(setq speedbar-directory-unshown-regexp "^\\(CVS\\|RCS\\|SCCS\\|\\.\\.*$\\)\\'")
(setq sr-speedbar-width 30)
(setq sr-speedbar-auto-refresh nil)

(add-hook 'markdown-mode-hook 'count-words)

(windmove-default-keybindings)

(global-set-key [M-left] 'windmove-left)          ; move to left window
(global-set-key [M-right] 'windmove-right)        ; move to right window
(global-set-key [M-up] 'windmove-up)              ; move to upper window
(global-set-key [M-down] 'windmove-down)          ; move to lower window

(global-linum-mode 1) ;; linum for all modes

;; attemping to use my own tabs
(defun code-syle ()
  (setq indent-tabs-mode t)
  (setq tab-width 2))

(require 'whitespace)

;; tern
(add-to-list 'load-path "/home/sridharrajs/plugins-emacs/tern/emacs/")
(autoload 'tern-mode "tern.el" nil t)

(ac-config-default)
(electric-pair-mode 1)
(yas-reload-all)

(eval-after-load 'tern
  '(progn
     (require 'tern-auto-complete)
     (tern-ac-setup)))

(add-hook 'js2-mode-hook 'ac-js2-mode)
(add-hook 'js2-mode-hook 'linum-mode)
(add-hook 'js2-mode-hook 'markdown-mode)
(add-hook 'js2-mode-hook 'json-mode)
(add-hook 'js2-mode-hook 'code-style)
(add-hook 'js2-mode-hook 'auto-complete-mode)
(add-hook 'js2-mode-hook (lambda () (tern-mode t)))

(add-hook 'prog-mode-hook (editorconfig-mode 1))
(add-hook 'prog-mode-hook 'yas-minor-mode)

;; helm ac
(require 'ac-helm) ;; Not necessary if using ELPA package
(global-set-key (kbd "C-:") 'ac-complete-with-helm)
(define-key ac-complete-mode-map (kbd "C-:") 'ac-complete-with-helm)

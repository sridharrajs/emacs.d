;;; init.el --- Summary

;;; Commentary:
;;; Base configuration for my Emacs

;;; Code:

(setq package-list '(graphql-mode whole-line-or-region scss-mode php-mode markdown-mode tern-auto-complete tern-context-coloring tern ibuffer-projectile projectile company yaml-mode editorconfig dotenv-mode xclip transient sr-speedbar multiple-cursors js2-mode idea-darkula-theme emmet-mode electric-operator duplicate-thing aggressive-indent nginx-mode use-package))

(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

;; install the missing dependencies from repos
(dolist (package package-list)
  (unless (package-installed-p package)
    (print "installing the missing package")
    (print package)                                                                                                                                                                                                         
    (package-install package)))

;; determine the OS
(defconst *is-osx* (eq system-type 'darwin))

;; load configuration from file
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Load config for specific purpose
(require 'init-tweak-defaults)
(require 'init-dotenv)
(require 'init-company)
(require 'init-editorconfig)
(require 'init-explorer-settings)
(require 'init-eshell)
(require 'init-git)
(require 'init-global-modes)
(require 'init-global-set-key)
(require 'init-graphql)
(require 'init-html)
(require 'init-ivy)
(require 'init-js)
(require 'init-json)
(require 'init-markdown)
(require 'init-nginx)
(require 'init-osx)
(require 'init-php)
(require 'init-projectile)
(require 'init-pug)
(require 'init-python)
(require 'init-sublime)
(require 'init-utils)
(require 'init-window)
(require 'init-xml)
(require 'init-yaml)

;; load intellij darkular theme
;; you can install from https://github.com/fourier/idea-darkula-theme
(load-theme 'idea-darkula t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(cuda-mode company-nginx use-package nginx-mode aggressive-indent duplicate-thing electric-operator emmet-mode idea-darkula-theme js2-mode multiple-cursors sr-speedbar xclip dotenv-mode editorconfig yaml-mode company ibuffer-projectile tern-context-coloring tern-auto-complete markdown-mode php-mode scss-mode whole-line-or-region graphql-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

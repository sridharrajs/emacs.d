(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

;; determine the OS
(defconst *is-osx* (eq system-type 'darwin))

;; load configuration from file
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Load config for specific purpose

(require 'init-tweak-defaults)
(require 'init-default-modes)
(require 'init-dotenv)
(require 'init-company)
(require 'init-editorconfig)
(require 'init-explorer-settings)
(require 'init-eshell)
(require 'init-flycheck)
(require 'init-git)
(require 'init-js)
(require 'init-markdown)
(require 'init-osx)
(require 'init-projectile)
(require 'init-python)
(require 'init-sublime)
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
   (quote
    (ibuffer-projectile projectile company flycheck yaml-mode gitignore-mode editorconfig dotenv-mode xclip transient sr-speedbar multiple-cursors js2-mode idea-darkula-theme emmet-mode electric-operator duplicate-thing autopair aggressive-indent))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

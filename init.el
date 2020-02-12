(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

;; load configuration from file
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Load config for specific purpose

(require 'init-tweak-defaults)
(require 'init-default-modes)
(require 'init-sublime)
(require 'init-explorer-settings)
(require 'init-eshell)
(require 'init-js)
(require 'init-python)
(require 'init-markdown)

;; load intellij darkular theme
;; you can install from https://github.com/fourier/idea-darkula-theme
(load-theme 'idea-darkula t)

;;; init-yaml --- Summary

;;; Commentary:
;;; Tweak the default Emacs configuration
;;; remove all the cruft add line number and basic functionality

;;; Code:

;; hide fundamental welcome mode
(setq inhibit-startup-screen t)

;; maximize emacs on window startup
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

;; dont create <filename>~ backup files
(setq make-backup-files nil)

;; file completion without case-insentive
(setq read-file-name-completion-ignore-case t)

;; reload the buffer when the file content changes on the disk
(global-auto-revert-mode t)

;; remove the directions
(menu-bar-mode -1)

(setq x-select-enable-clipboard t)

;; life is too short to type out yes and no ;)
(defalias 'yes-or-no-p 'y-or-n-p)

;; disable tool-bar-mode, only if available
(if (fboundp 'tool-bar-mode)
    (tool-bar-mode 0))

(provide 'init-tweak-defaults)
;;; init-tweak-defaults ends here

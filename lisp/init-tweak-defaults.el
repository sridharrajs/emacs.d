;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Tweak the default emacs configuration
;; remove cruft add line number and basic functionality

;; hide fundamental welcome mode
(setq inhibit-startup-screen t)

;; dont create <filename>~ backup files
(setq make-backup-files nil)

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

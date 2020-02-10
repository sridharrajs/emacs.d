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

;; disable tool-bar-mode, only if available
(if (fboundp 'tool-bar-mode)
    (tool-bar-mode 0))

(provide 'init-tweak-defaults)

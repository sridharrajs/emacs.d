;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Tweak the default emacs configuration
;; remove cruft add line number and basic functionality

;; hide fundamental welcome mode
(setq inhibit-startup-screen t)

;; dont create <filename>~ backup files
(setq make-backup-files nil)

;; have cua-mode always on for copy, paste sanity
(cua-mode 1)

;; always show line numbers
(global-linum-mode 1)

;; reload the buffer when the file content changes on the disk
(global-auto-revert-mode t)

;; for autocompletion of (), {} and so on.
(autopair-mode 1)
(autopair-global-mode) ;; to enable in all buffers

(provide 'init-tweak-defaults)

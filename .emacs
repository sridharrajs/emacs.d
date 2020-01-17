;; hide fundamental mode
(setq inhibit-startup-screen t)

;; have cua-mode always on
(cua-mode 1)

;; always show line numbers
(global-linum-mode 1)

;; dont create <filename>~ backup files
(setq make-backup-files nil)

;; set Ctrl + S for saving the file
(global-set-key (kbd "C-s") 'save-buffer) 

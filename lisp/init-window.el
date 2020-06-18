;;; init-window --- Summary

;;; Commentary:
;;; Tweak the default window configuration

;;; Code:

(global-set-key [C-S-left] 'windmove-left)          ; move to left window
(global-set-key [C-S-right] 'windmove-right)        ; move to right window
(global-set-key [C-S-up] 'windmove-up)              ; move to upper window
(global-set-key [C-S-down] 'windmove-down)          ; move to lower window

;; (split-window-right &optional SIZE)

(global-unset-key "\M-w")
(global-set-key (kbd "M-w") 'delete-other-windows)        ; close other windows
(global-set-key (kbd "<escape>") 'keyboard-quit)
(global-set-key (kbd "C-q") 'save-buffers-kill-terminal)        ; quit emacs

(provide 'init-window)
;;; init-window ends here

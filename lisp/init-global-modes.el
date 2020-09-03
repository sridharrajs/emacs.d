;;; init-global-mode --- Summary

;;; Commentary:
;;; Load the global modes for all Emacs session

;;; Code:

;; have cua-mode always on for copy, paste sanity
(cua-mode 1)

;; always show line numbers
(global-linum-mode 1)

(delete-selection-mode 1)
(aggressive-indent-mode 1) ;; indent things as you type
(electric-pair-mode 1)

(xclip-mode 1) ;; play nice with system's clipboard when opening in terminal

(provide 'init-global-modes)
;;; init-global-modes ends here

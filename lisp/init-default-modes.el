;;; init-default-mode --- Summary

;;; Commentary:
;;; Load the default modes

;;; Code:

;; for autocompletion of (), {} and so on.
(autopair-mode 1)
(autopair-global-mode) ;; to enable in all buffers

;; have cua-mode always on for copy, paste sanity
(cua-mode 1)

;; always show line numbers
(global-linum-mode 1)

(delete-selection-mode 1)
(aggressive-indent-mode 1) ;; indent things as you type

(xclip-mode 1) ;; play nice with system's clipboard when opening in terminal

(provide 'init-default-modes)
;;; init-default-modes ends here

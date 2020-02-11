;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; load the default modes

;; for autocompletion of (), {} and so on.
(autopair-mode 1)
(autopair-global-mode) ;; to enable in all buffers

;; have cua-mode always on for copy, paste sanity
(cua-mode 1)

;; always show line numbers
(global-linum-mode 1)

(delete-selection-mode 1)

(provide 'init-default-modes)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Setting for navigation explorer


;; speed-settings
(require 'sr-speedbar)

(global-set-key (kbd "C-1") 'sr-speedbar-toggle)
(setq speedbar-show-unknown-files t) ;; show all file
(setq speedbar-directory-unshown-regexp "^\\(CVS\\|RCS\\|SCCS\\|\\.\\.*$\\)\\'")
(setq sr-speedbar-width 30)
(setq sr-speedbar-auto-refresh nil)


(provide 'init-explorer-settings)

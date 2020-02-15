;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; custom configurations

;; reverse kill, kill everything before the point
(global-set-key "\M-k" '(lambda () (interactive) (kill-line 0)))

(provide 'init-utils)

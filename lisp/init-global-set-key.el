;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; global-set-key mappings

;; save a lot of movement
(global-set-key (kbd "\C-c\C-m") 'execute-extended-command)

(global-set-key [C-S-left] 'windmove-left)          ; move to left window
(global-set-key [C-S-right] 'windmove-right)        ; move to right window
(global-set-key [C-S-up] 'windmove-up)              ; move to upper window
(global-set-key [C-S-down] 'windmove-down)          ; move to lower window

(provide 'init-global-set-key)

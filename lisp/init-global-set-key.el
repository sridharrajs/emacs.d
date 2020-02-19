;;; init-global-set-key --- Summary

;;; Commentary:
;;; window navigation configurations

;;; Code:

;; save a lot of movement
(global-set-key (kbd "\C-c\C-m") 'execute-extended-command)

(global-set-key [C-s-left] 'windmove-left)          ; move to left window
(global-set-key [C-s-right] 'windmove-right)        ; move to right window
(global-set-key [C-s-up] 'windmove-up)              ; move to upper window
(global-set-key [C-s-down] 'windmove-down)          ; move to lower window

(provide 'init-global-set-key)
;;; init-global-set-key ends here

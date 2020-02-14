;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; projectile configuration

(projectile-mode +1)

(add-hook 'after-init-hook 'projectile-mode)

(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(require 'ibuffer-projectile)

(provide 'init-projectile)

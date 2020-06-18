;;; init-projectile --- Summary

;;; Commentary:
;;; Configuration for projectile

;;; Code:

(projectile-mode +1)

(add-hook 'after-init-hook 'projectile-mode)

(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-p") 'projectile-find-file) ;; open files within project using C-p

(require 'ibuffer-projectile)

(provide 'init-projectile)
;;; init-projectile ends here

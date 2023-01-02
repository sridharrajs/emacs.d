;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; custom configurations

;; reverse kill, kill everything before the point
(global-set-key "\M-k" '(lambda () (interactive) (kill-line 0)))

 ;; Startup time
 (defun efs/display-startup-time ()
    (message  "Emacs loaded in %s with %d garbage collections."
       (format "%.2f seconds"
         (float-time
          (time-subtract after-init-time before-init-time)))
        gcs-done))

 (add-hook 'emacs-startup-hook #'efs/display-startup-time)


(provide 'init-utils)

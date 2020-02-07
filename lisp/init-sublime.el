;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; shortcuts inspired from sublime

(require 'duplicate-thing) ;; for duplicating the current line, below
(global-set-key (kbd "C-d") 'duplicate-thing)

(defun move-line-up ()
  (interactive)
  (transpose-lines 1)
  (previous-line 2))

(defun move-line-down ()
  (interactive)
  (next-line 1)
  (transpose-lines 1)
  (previous-line 1))


(global-set-key [(control shift down)] 'move-line-down)
(global-set-key [(control shift up)] 'move-line-up)

(provide 'init-sublime)
;; end

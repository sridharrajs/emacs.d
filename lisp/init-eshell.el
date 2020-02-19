;;; init-eshell --- Summary

;;; Commentary:
;;;  eshell configuration

;;; Code:

(global-set-key (kbd "<f12>") 'eshell)

;;;; clear shell in eshell
(defun eshell-clear-buffer ()
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)
    (eshell-send-input)))

(add-hook 'eshell-mode-hook
      '(lambda()
	 (local-set-key (kbd "C-l") 'eshell-clear-buffer)))


(provide 'init-eshell)
;;; init-eshell ends here

(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

;; hide fundamental mode
(setq inhibit-startup-screen t)

;; have cua-mode always on
(cua-mode 1)

(require 'duplicate-thing)
(global-set-key (kbd "C-d") 'duplicate-thing)

(global-set-key [M-left] 'windmove-left)          ; move to left window
(global-set-key [M-right] 'windmove-right)        ; move to right window
(global-set-key [M-up] 'windmove-up)              ; move to upper window
(global-set-key [M-down] 'windmove-down)          ; move to lower window


;;;; clear shell in eshell

(defun eshell-clear-buffer ()
  "Clear terminal"
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)
    (eshell-send-input)))
(add-hook 'eshell-mode-hook
      '(lambda()
	 (local-set-key (kbd "C-l") 'eshell-clear-buffer)))

;;; end

;; always show line numbers
(global-linum-mode 1)

;; dont create <filename>~ backup files
(setq make-backup-files nil)

;; reload the buffer when the file content changes on the disk
(global-auto-revert-mode t)

;; for (), {}
(autopair-mode 1)

;; speed-settings
(require 'sr-speedbar)
(global-set-key (kbd "C-1") 'sr-speedbar-toggle)
(setq speedbar-show-unknown-files t) ;; show all file
(setq speedbar-directory-unshown-regexp "^\\(CVS\\|RCS\\|SCCS\\|\\.\\.*$\\)\\'")
(setq sr-speedbar-width 30)
(setq sr-speedbar-auto-refresh nil)


(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '(".babelrc" . json-mode))
(add-to-list 'auto-mode-alist '(".eslintrc" . json-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . html-mode))

;; css mode hooks
(add-hook 'css-mode-hook  'emmet-mode)
(add-hook 'css-mode-hook  'autopair-mode)

;; html mode hooks
(add-hook 'html-mode-hook  'emmet-mode)
(add-hook 'html-mode-hook  'autopair-mode)

;; python mode hooks
(add-hook 'py-mode-hook  'autopair-mode)

;; js-mode
(setq-default js-indent-level 2)
(add-hook 'js2-mode-hook  'autopair-mode)

(defun my-js-hook ()
  (local-set-key "," '(lambda () (interactive) (insert ", "))))

(add-hook 'js2-mode-hook 'my-js-hook)
(add-hook 'js2-mode-hook 'electric-operator-mode)

;; move line up
(defun move-line-up ()
  (interactive)
  (transpose-lines 1)
  (previous-line 2))

(global-set-key [(control shift up)] 'move-line-up)

;; move line down
(defun move-line-down ()
  (interactive)
  (next-line 1)
  (transpose-lines 1)
  (previous-line 1))

(global-set-key [(control shift down)] 'move-line-down)


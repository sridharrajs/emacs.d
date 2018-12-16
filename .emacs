(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wombat)))
 '(js-indent-level 2)
 '(js2-basic-offset 2)
 '(js2-include-node-externs t)
 '(speedbar-show-unknown-files t)
 '(sr-speedbar-right-side nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

(require 'js2-refactor)
(js2r-add-keybindings-with-prefix "C-c C-m")
(add-hook 'js2-mode-hook #'js2-refactor-mode)

;; electric operator
(require 'electric-operator)
(electric-operator-add-rules-for-mode 'python-mode
    (cons "->" " -> ")
    (cons "=>" " => "))

(global-set-key (kbd "C-;") 'er/expand-region)

;; speed-settings
(require 'sr-speedbar)
(global-set-key [f8] 'sr-speedbar-toggle)
(setq speedbar-show-unknown-files t) ;; show all file
(setq speedbar-directory-unshown-regexp "^\\(CVS\\|RCS\\|SCCS\\|\\.\\.*$\\)\\'")
(setq sr-speedbar-width 30)
(setq sr-speedbar-auto-refresh nil)

(add-hook 'markdown-mode-hook 'count-words)

(windmove-default-keybindings)

;; attemping to use my own tabs
(defun code-syle ()
  (setq-default js2-basic-offset 2)
  (setq indent-tabs-mode nil))

(require 'whitespace)

;; multiple cursor
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '(".babelrc" . json-mode))
(add-to-list 'auto-mode-alist '(".eslintrc" . json-mode))
(add-to-list 'auto-mode-alist '(".tern-project" . json-mode))

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.blade.\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))
(setq web-mode-engines-alist
  '(("php"    . "\\.phtml\\'")
    ("blade"  . "\\.blade\\."))
)

;; tern
(add-to-list 'load-path "/home/sridharrajs/plugins-emacs/tern/emacs/")
(autoload 'tern-mode "tern.el" nil t)

(ac-config-default)
(electric-pair-mode 1)
(yas-reload-all)
(setq-default mode-require-final-newline nil)

(eval-after-load 'tern
  '(progn
     (require 'tern-auto-complete)
     (tern-ac-setup)))

(add-hook 'js2-mode-hook 'ac-js2-mode)
(add-hook 'js2-mode-hook 'linum-mode)
(add-hook 'js2-mode-hook 'markdown-mode)
(add-hook 'js2-mode-hook 'json-mode)
(add-hook 'js2-mode-hook 'code-style)
(add-hook 'js2-mode-hook 'auto-complete-mode)
(add-hook 'js2-mode-hook 'electric-operator-mode)
(add-hook 'js2-mode-hook 'hs-minor-mode)
(add-hook 'js2-mode-hook (lambda () (tern-mode t)))

(add-hook 'php-mode-hook 'web-mode)

(defun untabify-buffer ()
  "Untabify current buffer"
  (interactive)
  (untabify (point-min) (point-max)))

(defun progmodes-hooks ()
  "Hooks for programming modes"
  (yas/minor-mode-on)
  (add-hook 'before-save-hook 'progmodes-write-hooks))

(defun progmodes-write-hooks ()
  "Hooks which run on file write for programming modes"
  (prog1 nil
    (set-buffer-file-coding-system 'utf-8-unix)
    (untabify-buffer)))

(add-hook 'js2-mode-hook 'progmodes-hooks)

(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.

(add-hook 'prog-mode-hook (editorconfig-mode 1))
(add-hook 'prog-mode-hook 'yas-minor-mode)

;; helm ac
(require 'ac-helm) ;; Not necessary if using ELPA package
(global-set-key (kbd "C-:") 'ac-complete-with-helm)
(define-key ac-complete-mode-map (kbd "C-:") 'ac-complete-with-helm)

;; Remap some func
(add-hook 'speedbar-reconfigure-keymaps-hook
          '(lambda ()
             (define-key speedbar-mode-map [S-up] 'speedbar-up-directory)
             (define-key speedbar-mode-map [right] 'speedbar-flush-expand-line)
             (define-key speedbar-mode-map [left] 'speedbar-contract-line)
             (define-key speedbar-mode-map [M-up] 'speedbar-restricted-prev)
             (define-key speedbar-mode-map [M-down] 'speedbar-restricted-next)
             (define-key speedbar-mode-map [up] 'speedbar-prev)
             (define-key speedbar-mode-map [down] 'speedbar-next)))

(global-set-key [M-left] 'windmove-left)          ; move to left window
(global-set-key [M-right] 'windmove-right)        ; move to right window
(global-set-key [M-up] 'windmove-up)              ; move to upper window
(global-set-key [M-down] 'windmove-down)          ; move to lower window

(global-set-key (kbd "M-S-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "M-S-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-S-<down>") 'shrink-window)
(global-set-key (kbd "M-S-<up>") 'enlarge-window)

;; global modes
(global-linum-mode 1) 
(delete-selection-mode 1)

;;projectile configurations
(projectile-global-mode)
(setq projectile-require-project-root nil)
(setq projectile-enable-caching t)

(eval-after-load "markdown-mode"
  '(progn
     (define-key markdown-mode-map (kbd "M-<left>") nil)
     (define-key markdown-mode-map (kbd "M-<right>") nil)))

(require 'duplicate-thing)
(global-set-key (kbd "C-d") 'duplicate-thing)
(require 'flycheck)
;; turn on flychecking globally
(add-hook 'after-init-hook #'global-flycheck-mode)

(defun search-selection (beg end)
  "search for selected text"
  (interactive "r")
  (let (
        (selection (buffer-substring-no-properties beg end))
        )
    (deactivate-mark)
    (isearch-mode t nil nil nil)
    (isearch-yank-string selection)
    )
  )
(define-key global-map (kbd "<C-f3>") 'search-selection)

(global-set-key (kbd "C-c <right>") 'hs-show-block)
(global-set-key (kbd "C-c <left>") 'hs-hide-block)
(global-set-key (kbd "C-c <down>") 'hs-show-all)
(global-set-key (kbd "C-c <up>") 'hs-hide-all)
(global-set-key (kbd "C-c l") 'hs-hide-level)


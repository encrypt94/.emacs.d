;; get rid of useless things
(dolist (mode '(menu-bar-mode tool-bar-mode scroll-bar-mode))
  (when (fboundp mode) (funcall mode -1)))

;; utf-8 for dah win
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(load-library "iso-transl")

;; Ask for y/n instead of yes or no
(defalias 'yes-or-no-p 'y-or-n-p)

;; Get hostname
(setq hostname (replace-regexp-in-string "\\(^[[:space:]\n]*\\|[[:space:]\n]*$\\)" "" (with-output-to-string (call-process "hostname" nil standard-output))))

;; dockerfile-mode
(add-to-list 'load-path "~/.emacs.d/lib/dockerfile-mode")
(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))
    
;; markdown-mode
(add-to-list 'load-path "~/.emacs.d/lib/markdown-mode")
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; linum-plus
(add-to-list 'load-path "~/.emacs.d/lib/linum-plus")
(require 'linum+)	 
(global-linum-mode 1)

;; go-mode
(add-to-list 'load-path "~/.emacs.d/lib/go-mode")
(require 'go-mode)

;; emacs-fish
(add-to-list 'load-path "~/.emacs.d/lib/emacs-fish")
(require 'fish-mode)


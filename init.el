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


;; Add lib paths
(setq dotfiles-lib-dir "~/.emacs.d/lib/")

(dolist (path (list "dockerfile-mode"
		    "markdown-mode"
		    "linum-plus"
		    "go-mode"
		    "emacs-fish"))
  (add-to-list 'load-path (concat dotfiles-lib-dir path)))

;; Require libs
(dolist (lib (list 'dockerfile-mode
		   'linum+
		   'go-mode
		   'markdown-mode
		   'fish-mode))
  (require lib))

(global-linum-mode 1)


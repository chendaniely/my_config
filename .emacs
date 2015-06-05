;;;;; MELPA
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )

;;;;; Org mode packages
(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

;;;;; disable startup splash screen
(setq inhibit-startup-screen t)

;;;;; additional load-path
(add-to-list 'load-path "~/.emacs.d/lisp/")

(setq c-basic-offset 4)     ; indents 4 chars
(setq tab-width 4)          ; and 4 char wide for TAB
(setq indent-tabs-mode nil) ; And force use of spaces

;;;;; elpy
(package-initialize)
(elpy-enable)

;;;;; jedi
;; taken from: http://tkf.github.io/emacs-jedi/latest/
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)                 ; optional

;;;;; shinx doc
(add-hook 'python-mode-hook (lambda ()
			      (require 'sphinx-doc)
			      (sphinx-doc-mode t)))

;;;;; julia
(autoload 'julia-mode "julia-mode" "Highlighting for Julia files" t)
(add-to-list 'auto-mode-alist '("\\.jl$" . julia-mode))

;;;;; R & ess
(require 'ess-site)
;; prevent replaceing underscore with <-
(ess-toggle-underscore nil)

;;;;; markdown-mode
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;;;;; polymode
(require 'poly-R)
(require 'poly-markdown)

;;; MARKDOWN
(add-to-list 'auto-mode-alist '("\\.md" . poly-markdown-mode))

;;; ORG
(add-to-list 'auto-mode-alist '("\\.org" . poly-org-mode))

;;; R related modes
(add-to-list 'auto-mode-alist '("\\.Snw" . poly-noweb+r-mode))
(add-to-list 'auto-mode-alist '("\\.Rnw" . poly-noweb+r-mode))
(add-to-list 'auto-mode-alist '("\\.Rmd" . poly-markdown+r-mode))
(add-to-list 'auto-mode-alist '("\\.rapport" . poly-rapport-mode))
(add-to-list 'auto-mode-alist '("\\.Rhtml" . poly-html+r-mode))
(add-to-list 'auto-mode-alist '("\\.Rbrew" . poly-brew+r-mode))
(add-to-list 'auto-mode-alist '("\\.Rcpp" . poly-r+c++-mode))
(add-to-list 'auto-mode-alist '("\\.cppR" . poly-c++r-mode))

(provide 'polymode-configuration)

;;;;; org mode settings
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)))
(setq org-src-fontify-natively t)

;;;;; revive.el
(autoload 'save-current-configuration "revive" "Save status" t)
(autoload 'resume "revive" "Resume Emacs" t)
(autoload 'wipe "revive" "Wipe Emacs" t)
;;;;; And define favorite keys to those functions.  Here is a sample.
(define-key ctl-x-map "S" 'save-current-configuration)
(define-key ctl-x-map "F" 'resume)
(define-key ctl-x-map "K" 'wipe)

;;;;; windows.el
(require 'windows)
(win:startup-with-window)
(define-key ctl-x-map "C" 'see-you-again)

;;;;; move between buffers using shift arrows
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;;;;; custom keybindings
; bind M-n to nlinum-mode
(global-set-key (kbd "M-n") 'nlinum-mode)
; bind M-p to list-packages
(global-set-key (kbd "M-p") 'list-packages)

;;;;; delete trailing white space on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;;;;; custom settings from GUI
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes (quote ("4e262566c3d57706c70e403d440146a5440de056dfaeb3062f004da1711d83fc" "64581032564feda2b5f2cf389018b4b9906d98293d84d84142d90d7986032d33" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "3b819bba57a676edf6e4881bd38c777f96d1aa3b3b5bc21d8266fa5b0d0f1ebf" default)))
 '(elpy-rpc-backend "jedi")
 '(elpy-test-runner (quote elpy-test-nose-runner))
 '(global-hl-line-mode t)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

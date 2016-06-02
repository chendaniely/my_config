;;;;; MELPA
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  ;;;;; Load all the packages!
  (add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
  (add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t) ; Org-mode's repository
  (add-to-list 'package-archives '("elpy" . "https://jorgenschaefer.github.io/packages/"))
 )

;;;;; additional load-path
(add-to-list 'load-path "~/.emacs.d/lisp/")

;;;; General emacs
(setq c-basic-offset 4)       ; indents 4 chars
(setq tab-width 4)            ; and 4 char wide for TAB
(setq indent-tabs-mode nil)   ; And force use of spaces

;;;;; disable startup splash screen
(setq inhibit-startup-screen t)

;(global-nlinum-mode t) ;; enable nline numbers globally

;; Standard el-get setup
;; (See also: https://github.com/dimitri/el-get#basic-setup)
;; (add-to-list 'load-path "~/.emacs.d/el-get/el-get")

;; (unless (require 'el-get nil 'noerror)
;;   (with-current-buffer
;;       (url-retrieve-synchronously
;;        "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
;;     (goto-char (point-max))
;;     (eval-print-last-sexp)))

;; (el-get 'sync)


;; Standard Jedi.el setting
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

;; Type:
;;     M-x el-get-install RET jedi RET
;;     M-x jedi:install-server RET
;; Then open Python file.




;;;;; Org mode packages
;(require 'package)
;(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

;;;;;;;;;; PYTHON
(add-hook 'python-mode-hook (lambda () (highlight-indentation-mode 1)))

;;;;; elpy
;(package-initialize)
(elpy-enable)
(setq elpy-rpc-backend "jedi")
(elpy-use-ipython)

;;;;; jedi
;; taken from: http://tkf.github.io/emacs-jedi/latest/
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)                 ; optional

;;;;; enable autopep8
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

;;;;; use flycheck instead of flymake
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;;;;; shinx doc
(add-hook 'python-mode-hook (lambda ()
			      (require 'sphinx-doc)
			      (sphinx-doc-mode t)))

;;;;; anaconda-mode
; (add-hook 'python-mode-hook 'anaconda-mode)

;;;;; Pweave
;; noweb-font-lock-mode: https://bitbucket.org/mpastell/emacs.d/src
;; http://mpastell.com/pweave/emacs.html

;Pnw-mode for Pweave reST documents
(defun Pnw-mode ()
       (require 'noweb-font-lock-mode)
       (noweb-mode)
       (setq noweb-default-code-mode 'python-mode)
       (setq noweb-doc-mode 'rst-mode))

(setq auto-mode-alist (append (list (cons "\\.Pnw$" 'Pnw-mode))
                   auto-mode-alist))

;Plw-mode for Pweave Latex documents
(defun Plw-mode ()
       (require 'noweb-font-lock-mode)
       (noweb-mode)
       (setq noweb-default-code-mode 'python-mode)
       (setq noweb-doc-mode 'latex-mode))

(setq auto-mode-alist (append (list (cons "\\.Plw$" 'Plw-mode))
                   auto-mode-alist))

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
 '(
   (python . t)
   (sh . t)
   )
 )
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
; (global-set-key (kbd "M-n") 'nlinum-mode)
; bind M-n to linum-mode
(global-set-key (kbd "M-n") 'linum-mode)
; bind M-p to list-packages
(global-set-key (kbd "M-p") 'list-packages)

;;;;; delete trailing white space on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;;;;;https://www.emacswiki.org/emacs/TransparentEmacs
;;(set-frame-parameter (selected-frame) 'alpha '(<active> [<inactive>]))
(set-frame-parameter (selected-frame) 'alpha '(85 50))
(add-to-list 'default-frame-alist '(alpha 85 50))

;;You can use the following snippet after you’ve set the alpha as above to assign a toggle to “C-c t”:

(eval-when-compile (require 'cl))
(defun toggle-transparency ()
  (interactive)
  (if (/=
       (cadr (frame-parameter nil 'alpha))
       100)
      (set-frame-parameter nil 'alpha '(100 100))
    (set-frame-parameter nil 'alpha '(85 50))))
(global-set-key (kbd "C-c t") 'toggle-transparency)

;;;;; custom settings from GUI
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(compilation-message-face (quote default))
 '(custom-enabled-themes (quote (material)))
 '(custom-safe-themes
   (quote
    ("e97dbbb2b1c42b8588e16523824bc0cb3a21b91eefd6502879cf5baa1fa32e10" "d4e9f95acd51433b776f1127143bbc7d0f1d41112d547e5b7a9a506be369dc39" "38ba6a938d67a452aeb1dada9d7cdeca4d9f18114e9fc8ed2b972573138d4664" "0fb6369323495c40b31820ec59167ac4c40773c3b952c264dd8651a3b704f6b5" "f024aea709fb96583cf4ced924139ac60ddca48d25c23a9d1cd657a2cf1e4728" "196cc00960232cfc7e74f4e95a94a5977cb16fd28ba7282195338f68c84058ec" "05c3bc4eb1219953a4f182e10de1f7466d28987f48d647c01f1f0037ff35ab9a" "4e262566c3d57706c70e403d440146a5440de056dfaeb3062f004da1711d83fc" "64581032564feda2b5f2cf389018b4b9906d98293d84d84142d90d7986032d33" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "3b819bba57a676edf6e4881bd38c777f96d1aa3b3b5bc21d8266fa5b0d0f1ebf" default)))
 '(elpy-rpc-backend "rope")
 '(elpy-test-runner (quote elpy-test-nose-runner))
 '(global-hl-line-mode t)
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-tail-colors
   (quote
    (("#49483E" . 0)
     ("#67930F" . 20)
     ("#349B8D" . 30)
     ("#21889B" . 50)
     ("#968B26" . 60)
     ("#A45E0A" . 70)
     ("#A41F99" . 85)
     ("#49483E" . 100))))
 '(magit-diff-use-overlays nil)
 '(pos-tip-background-color "#A6E22E")
 '(pos-tip-foreground-color "#272822")
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(weechat-color-list
   (unspecified "#272822" "#49483E" "#A20C41" "#F92672" "#67930F" "#A6E22E" "#968B26" "#E6DB74" "#21889B" "#66D9EF" "#A41F99" "#FD5FF0" "#349B8D" "#A1EFE4" "#F8F8F2" "#F8F8F0")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;;;;;;;;;;;;;;;  Start-up configuration ;;;;;;;;;;;;;
; Add ~/.emacs.d to load-path
(add-to-list 'load-path "~/.emacs.d/lisp/")

; Full screen during startup

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(package-selected-packages (quote (elpy))))

; Disable splash screen
(setq inhibit-splash-screen t)

; Turn off alarms
(setq ring-bell-function 'ignore)

; Startmode
(which-function-mode 1)
(add-to-list 'auto-mode-alist '("\\.olg\\'" . prolog-mode))
(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'python-mode-hook 'hs-minor-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(setq-default fill-column 80)

; Set up background color
;(add-to-list 'default-frame-alist '(foreground-color . "#E0DFDB"))
(add-to-list 'default-frame-alist '(background-color . "#DBEEDD"))

;;;;;;; Latex config ;;;;;;
; Auctex
(setq-default TeX-master nil)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;;;;; Print ;;;;;;
;; Double sided printing
(setq ps-lpr-switches '("-o Duplex=DuplexNoTumble"))
(setq ps-spool-duplex t)

;;;;;; Editing ;;;;;;

; Parenthesis pairing
(show-paren-mode 1)

; Wind move
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;;;;;; Python config ;;;;;;;
; Configure Pymacs
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
(autoload 'pymacs-autoload "pymacs")
(eval-after-load "pymacs"
  '(add-to-list 'pymacs-load-path "/Users/chen/.virtualenv/default/src/pymacs"))

; Add virtualEnv to PATH
(push "~/.virtualenvs/default/bin" exec-path)
(setenv "PATH"
        (concat
         "~/.virtualenvs/default/bin" ":"
         (getenv "PATH")
         ))

; Configure elpy
(package-initialize)
(elpy-enable)

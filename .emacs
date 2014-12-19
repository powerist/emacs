; Proof General
(load-file "~/.emacs.d/ProofGeneral-4.2/generic/proof-site.el")
(put 'set-goal-column 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(delete-selection-mode nil)
 '(inhibit-startup-screen t)
 '(mark-even-if-inactive t)
 '(scroll-bar-mode (quote right))
 '(transient-mark-mode 1))
(fset 'yes-or-no-p 'y-or-n-p)
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(active-hole-face ((((class color) (background light)) (:background "DeepSkyBlue3" :foreground "black"))))
 '(proof-locked-face ((((type gtk) (class color) (background light)) (:background "lightblue2")))))

(add-to-list 'load-path "~/.emacs.d/elisp/")
;(require 'auto-complete-config)
;(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
;(ac-config-default)

(defun coq-fix-keys-terminal ()
  (local-set-key (kbd "C-c C-m") 'proof-goto-point))

(defun coq-start ()
  (define-key coq-mode-map [f9] 'proof-goto-point)
  (define-key coq-mode-map [f8] 'proof-assert-next-command-interactive)
  (define-key coq-mode-map [f7] 'proof-undo-last-successful-command)
  (auto-complete-mode t)
  )

(setq proof-splash-enable nil)

(add-hook 'coq-mode-hook 'coq-start)
(require 'ibuffer)
(defalias 'list-buffers 'ibuffer)
(icomplete-mode t)

(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

(show-paren-mode 1)

;(setq skeleton-pair t)
;(skeleton-pair-insert-maybe )		
;(setq skeleton-pair-alist 

(setq skeleton-pair t)
(global-set-key "(" 'skeleton-pair-insert-maybe)
(global-set-key "<" 'skeleton-pair-insert-maybe)
(global-set-key "[" 'skeleton-pair-insert-maybe)
(global-set-key "{" 'skeleton-pair-insert-maybe)
(global-set-key "\"" 'skeleton-pair-insert-maybe)
;(global-set-key "\'" 'skeleton-pair-insert-maybe)

(add-hook 'dired-load-hook
               (lambda ()
                 (load "dired-x")
                 ;; Set dired-x global variables here.  For example:
                 ;; (setq dired-guess-shell-gnutar "gtar")
                 ;; (setq dired-x-hands-off-my-keys nil)
                 ))
(add-hook 'dired-mode-hook
               (lambda ()
                 ;; Set dired-x buffer-local variables here.  For example:
                 ;; (dired-omit-mode 1)
                 ))

; Startmode
(add-to-list 'auto-mode-alist '("\\.olg\\'" . prolog-mode))
(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(setq-default fill-column 80)

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

; AUCtex setup
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
(setq TeX-view-program-list '(("Evince" "evince --page-index=%(outpage) %o")))
(setq TeX-view-program-selection '((output-pdf "Evince")))
(add-hook 'LaTeX-mode-hook 'TeX-source-correlate-mode)
(setq TeX-source-correlate-start-server t)
(setq TeX-PDF-mode t)
(setq-default TeX-master nil) ; Query for master file.

; Color scheme
(add-to-list 'default-frame-alist '(foreground-color . "#E0DFDB"))
(add-to-list 'default-frame-alist '(background-color . "#102372"))
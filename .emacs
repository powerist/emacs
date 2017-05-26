;;;;;;;;;;;;;;;;  Start-up configuration ;;;;;;;;;;;;;
; Full screen during startup
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

; Startmode
(add-to-list 'auto-mode-alist '("\\.olg\\'" . prolog-mode))
(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(setq-default fill-column 80)

; Set up background color
;(add-to-list 'default-frame-alist '(foreground-color . "#E0DFDB"))
(add-to-list 'default-frame-alist '(background-color . "#DBEEDD"))


; Auctex
(setq-default TeX-master nil)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Double sided printing
(setq ps-lpr-switches '("-o Duplex=DuplexNoTumble"))
(setq ps-spool-duplex t)

; Parenthesis pairing
(show-paren-mode 1)

; Wind move
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

; Full screen during startup
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

; Parenthesis pairing
(show-paren-mode 1)


; Startmode
(add-to-list 'auto-mode-alist '("\\.olg\\'" . prolog-mode))
(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(setq-default fill-column 80)

; themes first
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'zenburn t)

(setq redisplay-dont-pause t
      scroll-margin 1
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position 1)

(setq mouse-wheel-follow-mouse 't)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))

; get that mouse working
(when (not (window-system))
  (xterm-mouse-mode +1))

; no emacs startup..
(setq inhibit-startup-screen +1)
(setq initial-scratch-message nil)

(defun my/text-formatting-hooks ()
  (my/turn-on 'auto-fill)) ; turn on automatic hard line wraps

(add-hook 'text-mode-hook
	  'my/text-formatting-hooks)

(require 'org)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

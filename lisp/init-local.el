;;; init-local.el --- additional packages to be installed

;;; Commentary:

;;; Code:
(require 'linum)
(setq linum-format "%3d ")
(global-linum-mode 1)

;;; helm package config
(require-package 'helm)
(require 'helm)
(require 'helm-config)

(helm-autoresize-mode t)
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-c h o") 'helm-occur)

(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match t)

(setq helm-locate-fuzzy-match t)

(helm-mode 1)

(require 'em-tramp)
(setq eshell-prefer-lisp-functions t)
(setq password-cache t)
(setq password-cache-expiry 300)

;;; emms
(require-package 'emms)

;;; yasnippet
(require-package 'yasnippet)

;;; solarized-theme
(require-package 'solarized-theme)
(load-theme 'solarized-dark)

;;; need to download Monaco font first for this to work
(set-face-attribute 'default nil :font "Monaco" :height 135)

(provide 'init-local)
;;; init-local.el ends here

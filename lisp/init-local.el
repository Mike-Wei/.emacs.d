;;; init-local.el --- my own customization packages to be installed

;;; Commentary:

;;; Code:
(global-hl-line-mode 1)

;;; helm package config
(require-package 'helm)
(require 'helm)
(require 'helm-config)
(helm-mode 1)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "M-x") 'helm-M-x)

;;; yasnippet
(require-package 'yasnippet)

;;; solarized-theme
(require-package 'solarized-theme)
(load-theme 'solarized-dark)

;;; need to download Monaco font first for this to work
(set-face-attribute 'default nil :font "Monaco" :height 120)

(provide 'init-local)
;;; init-local.el ends here

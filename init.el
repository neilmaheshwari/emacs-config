;;; Initialize MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(unless package-archive-contents (package-refresh-contents))
(package-initialize)

;;; Install fsharp-mode
(unless (package-installed-p 'fsharp-mode)
  (package-install 'fsharp-mode))

(require 'fsharp-mode)

;;; Set alarm bell
(setq ring-bell-function 'ignore)

;;; Set C formatting

(setq c-default-style "k&r"
      c-basic-offset 4)
;;; Indent case labels
(c-set-offset 'case-label '+)

;;; Add path to custom themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("43f927343df8857810c51579cb47a878712c36390cf0d7fad5db591a8b382eb8" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; Set initial theme
(load-theme 'monokai)


;;; Auto-refresh buffers when files changeo on disk
(global-auto-revert-mode t)

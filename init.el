(require 'whitespace)
(require 'package)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-initialize)

(setq default-directory "C:/code/mobile/")
(setq backup-directory-alist `(("." . "~/.saves")))

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(add-hook 'css-mode-hook 'my-css-mode-hook)
(add-hook 'less-css-mode-hook 'my-css-mode-hook)

(defun my-css-mode-hook ()
  (rainbow-mode 1))

(global-linum-mode t)

(require 'evil)
(define-key evil-normal-state-map "\C-u" 'evil-scroll-up)
(define-key evil-visual-state-map "\C-u" 'evil-scroll-up)

(defun create-shell ()
    "creates a shell with a given name"
    (interactive);; "Prompt\n shell name:")
    (let ((shell-name (read-string "shell name: " nil)))
    (shell (concat "*" shell-name "*"))))

(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(setq whitespace-style '(face trailing tabs))

(global-whitespace-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wombat)))
 '(custom-safe-themes (quote ("8b30636c9a903a9fa38c7dcf779da0724a37959967b6e4c714fdc3b3fe0b8653" default)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; system-type definition
(defun system-is-linux()
  (string-equal system-type "gnu/linux"))
(defun system-is-windows()
  (string-equal system-type "windows-nt"))

;; name and email
(setq user-full-name "alex-haley")
(setq user-mail-address "mloyygraduate7@gmail.com")

;; clear useless shit
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(tooltip-mode -1)
(setq use-dialog-box nil)
(setq redisplay-dont-pause t)
(setq ring-bell-function 'ignore)

;; disable autosave
(setq make-backup-files nil)
(setq auto-save-default nil)

;; someconf
;; (global-display-line-numbers-mode)
(setq frame-title-format "emacs")
(show-paren-mode t)
(setq show-paren-style 'expression)
(electric-pair-mode 1)

;; MELPA
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

;; set lines numbers
(global-display-line-numbers-mode 1)

;; Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

(require 'evil)
(evil-mode 1)

;; Dired
(require 'dired)
(setq dired-recursive-deletes 'top) ;; for directory deleting

;; org-mode
(require 'org)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key "\C-cl" 'org-stroke-link)
(add-to-list 'auto-mode-alist '("\\.org$" . Org-mode))

;; org-roam (mbe)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruvbox-dark-soft))
 '(custom-safe-themes
   '("2ff9ac386eac4dffd77a33e93b0c8236bb376c5a5df62e36d4bfa821d56e4e20" default))
 '(package-selected-packages '(gruvbox-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

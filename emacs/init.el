;; startup
(setq inhibit-startup-screen t)

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

;; custom theme
(add-to-list 'custom-theme-load-path "c:/Users/Alex/AppData/Roaming/.emacs.d/themes/")
(load-theme 'naysayer t)

;; font
(set-frame-font "FiraCode Nerd Font Mono Reg 11" nil t)

;; tabulation
(setq tab-width 4
      c-basic-offset tab-width)
(setq backward-delete-char-untabify-method nil) ;; delete whole tab while backspace is pressed

;; someconf
;; (global-display-line-numbers-mode)
(setq frame-title-format "emacs")
(show-paren-mode t)
(setq show-paren-style 'expression)
(electric-pair-mode 1)

;; KEYBINDINGS ->

(keymap-global-set "C-M-j" 'next-line)
(keymap-global-set "C-M-k" 'previous-line)
(keymap-global-set "C-M-u" 'backward-char)
(keymap-global-set "C-M-i" 'forward-char)
(keymap-global-set "C-u"   'left-word)
(keymap-global-set "C-i"   'right-word)
(keymap-global-set "C-<return>" "C-e <return>")

;; KEYBINDINGS END

;; set lines numbers
;; (global-display-line-numbers-mode 1)

;; Evil
;;(unless (package-installed-p 'evil)
;;  (package-install 'evil))

;;(require 'evil)
;;(evil-mode 1)

;; Dired
(require 'dired)
(setq dired-recursive-deletes 'top) ;; for directory deleting

;; org-mode
(require 'org)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key "\C-cl" 'org-stroke-link)
(add-to-list 'auto-mode-alist '("\\.org$" . Org-mode))

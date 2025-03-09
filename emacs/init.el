
;; startup
(setq inhibit-startup-screen t)

;; system-type definition
(defun system-is-linux()
  (string-equal system-type "gnu/linux"))
(defun system-is-windows()
  (string-equal system-type "windows-nt"))

;; name and email
(setq user-full-name "godisemacs")
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

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'naysayer t)

;; font
(set-frame-font "ProFontIIx 11" nil t)

;; tabulation
(setq tab-width 4
      c-basic-offset tab-width)
(setq backward-delete-char-untabify-method nil) ;; delete whole tab while backspace is pressed

;; someconf
;; toggle maximized buffer on startup and beyond
(push '(fullscreen . maximized) default-frame-alist)

;; KEYBINDINGS

;; UNSETTING

(global-unset-key (kbd "C-M-i"))
(global-unset-key (kbd "C-i"))
(global-unset-key (kbd "M-i"))
(global-unset-key (kbd "C-M-u"))
(global-unset-key (kbd "C-u"))
(global-unset-key (kbd "M-u"))
(global-unset-key (kbd "C-d"))
(global-unset-key (kbd "C-w"))
(global-unset-key (kbd "C-q"))
(global-unset-key (kbd "C-j"))
(global-unset-key (kbd "C-M-j"))
(global-unset-key (kbd "C-k"))
(global-unset-key (kbd "C-M-k"))
(global-unset-key (kbd "C-M-o"))
(global-unset-key (kbd "C-f"))
(global-unset-key (kbd "C-s"))
(global-unset-key (kbd "C-l"))
(global-unset-key (kbd "C-e"))
(global-unset-key (kbd "C-M-e"))
(global-unset-key (kbd "C-M-r"))
(global-unset-key (kbd "M-S-i"))
(global-unset-key (kbd "C-v"))
(global-unset-key (kbd "M-k"))
(global-unset-key (kbd "M-u"))
(global-unset-key (kbd "M-j"))
(global-unset-key (kbd "C-z"))

;; SETTING

(keymap-global-set "C-M-j"   'next-line)
(keymap-global-set "C-M-k"   'previous-line)
(keymap-global-set "C-M-u"   'backward-char)
(keymap-global-set "C-M-i"   'forward-char)
(keymap-global-set "C-u"     'left-word)
(keymap-global-set "C-<return>" "C-M-r <return>")
(keymap-global-set "C-d"     'kill-region)
(keymap-global-set "C-q"     'query-replace)
(keymap-global-set "C-k"     'backward-paragraph)
(keymap-global-set "C-j"     'forward-paragraph)
(keymap-global-set "C-f"     'isearch-forward)
(keymap-global-set "C-s"     'save-buffer)
(keymap-global-set "C-M-r"   'move-end-of-line)
(keymap-global-set "C-M-e"   'move-beginning-of-line)
(keymap-global-set "C-e"     'recenter-top-bottom)
(keymap-global-set "C-l"     'kill-line)
(keymap-global-set "C-v"     'yank)
(keymap-global-set "C-c C-c" 'copy-region-as-kill)
(keymap-global-set "C-w"     'kill-region)
(keymap-global-set "C-i"     'right-word)
(keymap-global-set "C-z"     'undo)

;; KEYBINDINGS END

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; highlight-numbers
(add-hook 'prog-mode-hook 'highlight-numbers-mode)

;; Dired
(require 'dired)
(setq dired-recursive-deletes 'top) ;; for directory deleting

;; org-mode
(require 'org)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key "\C-cl" 'org-stroke-link)
(add-to-list 'auto-mode-alist '("\\.org$" . Org-mode))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(elscreen emacs-gc-stats empv evil highlight-numbers lua-mode magit
	      with-editor zig-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

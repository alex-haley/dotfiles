
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
(transient-mark-mode -1)

;; disable autosave
(setq make-backup-files nil)
(setq auto-save-default nil)

;; custom theme
(add-to-list 'load-path "~/.emacs.d/elisp")

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'haley t)

;; font
(set-frame-font "ProFontIIx 12" nil t)

;; tabulation
(setq tab-width 4
      c-basic-offset tab-width)
;; delete whole tab while backspace is pressed
(setq backward-delete-char-untabify-method nil)

;; someconf
;; toggle maximized buffer on startup and beyond
(push '(fullscreen . maximized) default-frame-alist)

;; enable etags-regen-mode
(etags-regen-mode 1)
;; visual-line-mode for comfort wrapping
(global-visual-line-mode 1)

;; KEYBINDINGS

(define-key input-decode-map [?\C-i] [C-i])

;; unmap c-mode specific keybindings
;; because they will not unmap after global-unset-key
(add-hook 'c-mode-hook
	  (lambda ()
	    (define-key c-mode-map (kbd "C-M-e") nil)))
;; yes different modes for c and c++ is great
(add-hook 'c++-mode-hook
	  (lambda ()
	    (define-key c++-mode-map (kbd "C-M-e") nil)))

;; unbind this key in elisp mode so i can move
;; in my config normally
(add-hook 'emacs-lisp-mode-hook
	  (lambda ()
	    (define-key emacs-lisp-mode-map (kbd "C-M-i") nil)))

;; SETTING KEYS

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
(keymap-global-set "C-c c"   'copy-region-as-kill)
(keymap-global-set "C-w"     'kill-region)
(global-set-key (kbd "<C-i>")     'right-word)
(keymap-global-set "C-z"     'undo)
(keymap-global-set "M-m"     'compile)
(keymap-global-set "C-c C-c" 'comment-region)
(keymap-global-set "C-c u"   'uncomment-region)

;; KEYBINDINGS END

;; simple-c-mode
(add-to-list 'load-path "~/.emacs.d/simpc/")
(require 'simpc-mode)

;; associate simpc-mode with .odin files
;; because odin-mode that I've installed
;; is not good.
(add-to-list 'auto-mode-alist '("\\.odin\\'" . simpc-mode))

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; highlight-numbers
(add-hook 'prog-mode-hook 'highlight-numbers-mode)

;; ultra-scroll
;; if its not installed evaluate command below
;; (package-vc-install '(ultra-scroll :vc-backend Git :url "https://github.com/jdtsmith/ultra-scroll"))
(use-package ultra-scroll
  ;:load-path "~/code/emacs/ultra-scroll" ; if you git clone'd instead of package-vc-install
  :init
  (setq scroll-conservatively 101 ; important!
        scroll-margin 0) 
  :config
  (ultra-scroll-mode 1))

;; hl-mode
(use-package hl-todo
  :hook ((prog-mode . hl-todo-mode)
	 (text-mode . hl-todo-mode))
  :config
  (setq hl-todo-keyword-faces
	`(("TODO"  . "#FF0000")
	  ("FIXME" . "#A14600")
	  ("NOTE"  . "#63B100"))))

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
 '(custom-safe-themes
   '("2622c5fb8c18917c174010114d45c91cc0f1c6fa52547b23eda832ec7cb7a066"
     "024970d6146229f35f72fe34e120d3439df828d62e598169bdbcfbd7ed2cd069"
     "913e8afbc1126df2b196357df3218ae6e8eb631994db1517200365cb491acf36"
     default))
 '(package-selected-packages
   '(autothemer d-mode elscreen emacs-gc-stats empv evil
		highlight-numbers hl-todo lua-mode magit org-roam
		slime ultra-scroll with-editor zig-mode))
 '(package-vc-selected-packages
   '((ultra-scroll :vc-backend Git :url
		   "https://github.com/jdtsmith/ultra-scroll"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

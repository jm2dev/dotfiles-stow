;; global variables
(setq
 inhibit-startup-screen t
 create-lockfiles nil
 make-backup-files nil
 column-number-mode t
 scroll-error-top-bottom t
 show-paren-delay 0.5
 use-package-always-ensure t
 sentence-end-double-space nil)

;; buffer local variables
(setq-default
 indent-tabs-mode nil
 tab-width 2
 c-basic-offset 2)

;; modes
(electric-indent-mode 0)

;; global keybindings
(global-unset-key (kbd "C-z"))

;; the package manager
(require 'package)
(setq
 package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                    ("org" . "http://orgmode.org/elpa/")
                    ("melpa" . "http://melpa.org/packages/")
                    ("melpa-stable" . "http://stable.melpa.org/packages/"))
 package-archive-priorities '(("melpa-stable" . 1)))

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

;; https://ogbe.net/emacsconfig.html
(load "server")
(unless (server-running-p) (server-start))

(add-hook 'server-switch-hook
          (lambda ()
            (when (current-local-map)
              (use-local-map (copy-keymap (current-local-map))))
            (local-set-key (kbd "C-x k") 'server-edit)))

;;(load-theme 'wombat)
;(set-face-attribute 'default nil :height 194)
;;(set-face-attribute 'fringe nil :background "#2d2d2d")
;(set-face-attribute 'default nil :family "Hack")
;(set-face-attribute 'font-lock-comment-face nil :slant 'italic)
;(set-face-attribute 'font-lock-comment-face nil :weight 'semibold)
;(set-fontset-font "fontset-default" 'unicode "Hack")

;; set a nice looking font
(setq my-font-height (cond ((eq system-type 'darwin) 130)
                           ((eq system-type 'windows-nt) 100)
                           ((eq system-type 'gnu/linux) 190)))


(set-face-attribute 'default nil
                    :family "IBM Plex mono"
                    :width 'normal
                    :height my-font-height
                    :weight 'normal)

(menu-bar-mode -1)
(when (display-graphic-p)
  (tool-bar-mode -1)
  (scroll-bar-mode -1))

;; ensime
(use-package ensime
  :ensure t
  :pin melpa-stable)

;; http://pages.sachachua.com/.emacs.d/Sacha.html
(defadvice color-theme-alist (around sacha activate)
  (if (ad-get-arg 0)
      ad-do-it
    nil))
(use-package zenburn-theme)

(prefer-coding-system 'utf-8)
(when (display-graphic-p)
  (setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING)))


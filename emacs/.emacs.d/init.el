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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("61ae193bf16ef5c18198fbb4516f0c61a88f7b55b693a3b32d261d8501c4a54b" "bfdcbf0d33f3376a956707e746d10f3ef2d8d9caa1c214361c9c08f00a1c8409" default)))
 '(package-selected-packages
   (quote
    (markdown-mode ox-reveal adoc-mode magit anti-zenburn-theme cider clojure-mode projectile better-defaults ensime solarized-theme zenburn-theme use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; http://pages.sachachua.com/.emacs.d/Sacha.html
(defadvice color-theme-alist (around sacha activate)
  (if (ad-get-arg 0)
      ad-do-it
    nil))
(use-package anti-zenburn-theme)

(prefer-coding-system 'utf-8)
(when (display-graphic-p)
  (setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING)))


;; https://ogbe.net/emacsconfig.html
(load "server")
(unless (server-running-p) (server-start))

(add-hook 'server-switch-hook
          (lambda ()
            (when (current-local-map)
              (use-local-map (copy-keymap (current-local-map))))
            (local-set-key (kbd "C-x k") 'server-edit)))

(menu-bar-mode -1)
(when (display-graphic-p)
  (tool-bar-mode -1)
  (scroll-bar-mode -1))

(load-theme 'anti-zenburn)
;(set-face-attribute 'default nil :height 194)
;(set-face-attribute 'fringe nil :background "#2d2d2d")
;(set-face-attribute 'default nil :family "Source Code Pro")
;(set-face-attribute 'font-lock-comment-face nil :slant 'italic)
;(set-face-attribute 'font-lock-comment-face nil :weight 'semibold)
;(set-fontset-font "fontset-default" 'unicode "DejaVu Sans Mono for Powerline")

;; from https://github.com/bastibe/.emacs.d/blob/master/init.el
(setq my-font-height (cond ((eq system-type 'darwin) 130)
                           ((eq system-type 'windows-nt) 100)
                           ((eq system-type 'gnu/linux) 190)))

(set-face-attribute 'default nil
                    :family "IBM Plex mono"
                    :width 'normal
                    :height my-font-height
                    :weight 'normal)


(require 'linum)
(set-face-attribute 'linum nil
                    :background (face-attribute 'default :background)
                    :foreground (face-attribute 'font-lock-comment-face :foreground))
(defface linum-current-line-face
  `((t :background "gray30" :foreground "gold"))
  "Face for the currently active Line number")
(defvar my-linum-current-line-number 0)
(defun get-linum-format-string ()
  (setq-local my-linum-format-string
              (let ((w (length (number-to-string
                                (count-lines (point-min) (point-max))))))
                (concat " %" (number-to-string w) "d "))))
(add-hook 'linum-before-numbering-hook 'get-linum-format-string)
(defun my-linum-format (line-number)
  (propertize (format my-linum-format-string line-number) 'face
              (if (eq line-number my-linum-current-line-number)
                  'linum-current-line-face
                'linum)))
(setq linum-format 'my-linum-format)
(defadvice linum-update (around my-linum-update)
  (let ((my-linum-current-line-number (line-number-at-pos)))
    ad-do-it))
(ad-activate 'linum-update)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default tab-stop-list (number-sequence 2 120 2))
(setq c-basic-indent 2)
(setq sh-basic-offset 2)

(defun my-tabs-makefile-hook ()
  (setq indent-tabs-mode t))
(add-hook 'makefile-mode-hook 'my-tabs-makefile-hook)

(defvar my-term-shell "/usr/bin/zsh")
(defadvice ansi-term (before force-bash)
  (interactive (list my-term-shell)))
(ad-activate 'ansi-term)

;; ensime web site
(use-package ensime
  :ensure t
  :pin melpa-stable)

;; wrap lines
(visual-line-mode t)

;; GTD
(define-key global-map "\C-cc" 'org-capture)

(setq org-agenda-files '("~/src/orgmode/gtd/inbox.org"
                         "~/src/orgmode/gtd/gtd.org"
                         "~/src/orgmode/gtd/tickler.org"))

(setq org-capture-templates '(("t" "Todo [inbox]" entry
                               (file+headline "~/src/orgmode/gtd/inbox.org" "Tasks")
                               "* TODO %i%?")
                              ("T" "Tickler" entry
                               (file+headline "~/src/orgmode/gtd/tickler.org" "Tickler")
                               "* %i%? \n %U")))

(setq org-refile-targets '(("~/src/orgmode/gtd/gtd.org" :maxlevel . 3)
                           ("~/src/orgmode/gtd/someday.org" :level . 1)
                           ("~/src/orgmode/gtd/tickler.org" :maxlevel . 2)))

;; emacs clojure
(defvar my-packages '(better-defaults
                      projectile
                      clojure-mode
                      cider))

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))

;; asciidoc
(add-to-list 'auto-mode-alist (cons "\\.adoc\\'" 'adoc-mode))

;; Reveal.js + Org mode
(require 'ox-reveal)
(setq Org-Reveal-root "file:///home/jm/src/github/reveal.js")
(setq Org-Reveal-title-slide nil)

;; markdow-mode
(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))


;; clojure
(unless (package-installed-p 'clojure-mode)
  (package-install 'clojure-mode))

(add-hook 'clojure-mode-hook #'subword-mode)

(add-hook 'clojure-mode-hook #'smartparens-strict-mode)

(add-hook 'clojure-mode-hook #'aggressive-indent-mode)


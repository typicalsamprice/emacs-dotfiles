;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

(setq user-full-name "Sam Price"
      user-mail-address "sam@typicalsamprice.com")

(add-load-path! doom-user-dir)
(require 'todotxt)
(require 'simpc-mode)

(setq doom-font (font-spec :family "Iosevka Nerd Font" :size 18))

(setq doom-theme 'gruber-darker)
(load-theme 'gruber-darker t)

(setq display-line-numbers-type 'relative)

(setq org-directory "~/Documents/")

(setq todotxt-file "~/.todo")
(map! :leader :n "t t" #'todotxt)
(evil-set-initial-state 'todotxt-mode 'emacs)

(add-hook! 'LaTeX-mode-hook :append #'(lambda () (company-mode -1)))

(map! :n "C-," #'lsp-ui-doc-glance)

(add-to-list 'auto-mode-alist '("\\.rs$" . rust-mode))
(add-to-list 'auto-mode-alist '("\\.c$" . simpc-mode))

(add-hook! 'rust-mode-hook :append #'lsp)

;; Don't deal with the uber-hard-to-see cursor
;; This takes the color of the string face
(defconst tysp/cursor-color "#73c936")
(when (eq doom-theme 'gruber-darker)
  (setq evil-normal-state-cursor `(box ,tysp/cursor-color)
        evil-insert-state-cursor `(bar ,tysp/cursor-color)
        evil-visual-state-cursor `(hollow ,tysp/cursor-color)))

;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

(setq user-full-name "Sam Price"
      user-mail-address "sam@typicalsamprice.com")

(load-file "simpc-mode.el")

(setq doom-font (font-spec :family "Iosevka Nerd Font" :size 18))

(setq doom-theme 'gruber-darker)

(setq display-line-numbers-type 'relative)

(setq org-directory "~/Documents/")

(map! :n "C-," #'lsp-ui-doc-glance)

(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
(add-to-list 'auto-mode-alist '("\\.c\\'" . simpc-mode))

(add-hook! 'rust-mode-hook :append #'lsp)

;; Don't deal with the uber-hard-to-see cursor
;; This takes the color of the string face
(if (eq doom-theme 'gruber-darker)
    (let ((col "#73c936"))
        (add-to-list 'default-frame-alist '(cursor-color . col))
        (set-cursor-color col)))

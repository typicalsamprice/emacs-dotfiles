;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

(setq user-full-name "Sam Price"
      user-mail-address "sam@typicalsamprice.com")

(load-file "simpc-mode.el")

(setq doom-font (font-spec :family "FiraCode Nerd Font" :size 16))

(setq doom-theme 'doom-molokai)

(setq display-line-numbers-type 'relative)

(setq org-directory "~/Documents/")

(map! :n "C-," #'lsp-ui-doc-glance)

(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
(add-to-list 'auto-mode-alist '("\\.c\\'" . simpc-mode))

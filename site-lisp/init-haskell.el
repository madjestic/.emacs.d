;; init-haskell.el --- Initialize haskell configurations.  -*- lexical-binding: t -*-

;;; Commentary:
;;
;; Haskell configuration.
;;

;;; Code:

(use-package haskell-mode
  :hook(after-init . haskell-mode)
  :bind(("C-c C-c" . haskell-compile)
	("C-S-i"   . lsp-lens-mode)
	)
  :init())

(use-package lsp-mode)
(use-package lsp-ui)
(use-package lsp-haskell
  :config
  ;; (require 'smartparens)
  ;; (require 'paredit)
  ;; (require 'rainbow-delimiters)
  :init
  (add-hook 'haskell-mode-hook #'lsp)
  ;; (setq smartparens-mode        f
  ;; 	paredit-mode		f
  ;; 	rainbow-delimiters-mode f)
  )

(provide 'init-haskell)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-haskell.el ends here

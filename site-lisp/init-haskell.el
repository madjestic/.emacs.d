;; init-haskell.el --- Initialize haskell configurations.  -*- lexical-binding: t -*-

;;; Commentary:
;;
;; Haskell configuration.
;;

;;; Code:

(use-package haskell-mode)
(use-package lsp-mode)
(use-package lsp-ui)
(use-package lsp-haskell
  :init
  (add-hook 'haskell-mode-hook #'lsp))

;; (add-hook 'haskell-mode-hook
;;  (lambda ()
;;    (local-set-key [f5] #'haskell-compile)))
;; (setq lsp-haskell-process-path-hie "hie-wrapper")

(provide 'init-haskell)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-haskell.el ends here


;; init-haskell.el --- Initialize haskell configurations.  -*- lexical-binding: t -*-

;;; Commentary:
;;
;; Haskell configuration.
;;

;;; Code:

(use-package lsp-mode)
(use-package lsp-ui)
(use-package lsp-haskell
  :config
  ;; (require 'smartparens)
  ;; (require 'paredit)
  ;; (require 'rainbow-delimiters)
  :init
  (add-hook 'haskell-mode-hook #'lsp)
  (setq lsp-ui-doc-header                t
	lsp-ui-doc-include-signature     t
	lsp-ui-doc-max-height            20
	lsp-ui-doc-max-width             50
	lsp-ui-doc-position              'top
	lsp-ui-doc-use-childframe        t
	lsp-ui-peek-always-show          t
	lsp-ui-peek-fontify              'always
	lsp-ui-sideline-ignore-duplicate t
	lsp-ui-sideline-show-hover       t
	)
  )

(add-hook 'haskell-mode-hook #'smartparens-mode)
(add-hook 'haskell-mode-hook #'paredit-mode)
(add-hook 'haskell-mode-hook #'rainbow-delimiters-mode)

(setq haskell-process-type 'cabal-repl)  ; or 'cabal-repl
   (setq haskell-process-auto-import-loaded-modules t)
   (setq haskell-process-log t)
   (setq haskell-tags-on-save nil)  ; Let HLS handle tags

(use-package haskell-mode
  :hook(after-init . haskell-mode)
  :bind(("C-c C-c" . haskell-compile)
	("C-S-i"   . lsp-lens-mode)
	)
  :init())

;; (use-package copilot
;;   :vc (:url "https://github.com/copilot-emacs/copilot.el"
;;             :rev :newest
;;             :branch "main")
;;   :bind(("C-<tab>" . 'copilot-accept-completion)))

;; (add-hook 'prog-mode-hook 'copilot-mode)

(provide 'init-haskell)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-haskell.el ends here

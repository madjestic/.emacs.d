;; init-haskell.el --- Initialize haskell configurations.  -*- lexical-binding: t -*-

;;; Commentary:
;;
;; Python configuration.
;;

;;; Code:

(add-hook 'haskell-mode-hook
	  (lambda()
	    (auto-complete-mode t)

	    (use-package paredit
	      :hook (after-init-hook . paredit-mode)
	      :init())

	    (use-package smartparens
	      :hook (after-init-hook . smartparens-mode)
	      :init())

	    (use-package rainbow-delimiters
	      :hook (after-init-hook . rainbow-delimiters-mode)
	      :init())))

(provide 'init-haskell)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-haskell.el ends here


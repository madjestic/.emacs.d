;; init-haskell.el --- Initialize haskell configurations.  -*- lexical-binding: t -*-

;;; Commentary:
;;
;; Haskell configuration.
;;

;;; Code:

(use-package paredit
  :hook (after-init-hook . enable-paredit-mode)
  :init())

(use-package smartparens
  :hook (after-init-hook . smartparens-mode)
  :init())

(use-package rainbow-delimiters
  :hook (after-init . rainbow-delimiters-mode)
  :init())

(add-hook 'haskell-mode-hook #'smartparens-mode)
(add-hook 'haskell-mode-hook #'paredit-mode)
(add-hook 'haskell-mode-hook #'rainbow-delimiters-mode)

;; (use-package dante
;;   :ensure t
;;   :after haskell-mode
;;   :commands 'dante-mode
;;   :init
;;   (add-hook 'haskell-mode-hook 'flycheck-mode)
;;   ;; OR for flymake support:
;;   (add-hook 'haskell-mode-hook 'flymake-mode)
;;   (remove-hook 'flymake-diagnostic-functions 'flymake-proc-legacy-flymake)

;;   (add-hook 'haskell-mode-hook 'dante-mode)
;;   )

;; (add-hook 'haskell-mode-hook
;; 	  (lambda()
;; 	    (auto-complete-mode t)

;; 	    (use-package paredit
;; 	      ;;:hook (after-init-hook . paredit-mode)
;; 	      :init(paredit-mode))

;; 	    (use-package smartparens
;; 	      :hook (after-init-hook . smartparens-mode)
;; 	      :init())

;; 	    (use-package rainbow-delimiters
;; 	      :hook (after-init-hook . rainbow-delimiters-mode)
;; 	      :init())))

(provide 'init-haskell)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-haskell.el ends here


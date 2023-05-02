;; init-rust.el --- Initialize rust configurations.  -*- lexical-binding: t -*-

;;; Commentary:
;;
;; Rust configuration.
;;

;;; Code:

;; (use-package paredit
;;   :hook (after-init-hook . enable-paredit-mode)
;;   :init())

;; (use-package smartparens
;;   :hook (after-init-hook . smartparens-mode)
;;   :init())

;; (use-package rainbow-delimiters
;;   :hook (after-init . rainbow-delimiters-mode)
;;   :init())

;; (add-hook 'rust-mode-hook #'smartparens-mode)
;; (add-hook 'rust-mode-hook #'paredit-mode)
;; (add-hook 'rust-mode-hook #'rainbow-delimiters-mode)

(use-package cargo)
(use-package cargo)
(use-package flycheck-rust)
(use-package flymake-rust)
(use-package rust-mode)

(provide 'init-rust)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-rust.el ends here


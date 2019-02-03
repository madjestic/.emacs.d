;; init-program.el --- Initialize program configurations.  -*- lexical-binding: t -*-

;;; Commentary:
;;
;; General programming configurations.
;;

;;; Code:

(use-package paredit
;;  :hook (after-init . paredit-mode)
  :init())

(use-package smartparens
;;  :hook (after-init . smartparens-mode)
  :init())

;;n(setq paredit-mode t) - seems to interfere with lsp-mode
;; (setq paredit-mode t
;;       smartparens-mode t)

(provide 'init-program)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-program.el ends here


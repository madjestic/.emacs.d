;; init-python.el --- Initialize python configurations.  -*- lexical-binding: t -*-

;;; Commentary:
;;
;; Python configuration.
;;

;;; Code:

;; (use-package lsp-python-ms
;;   :ensure t
;;   :init (setq lsp-python-ms-auto-install-server t
;; 	      lsp-python-ms-executable (executable-find "pyls"))
;;   :hook (python-mode . (lambda ()
;;                           (require 'lsp-python-ms)
;;                           (lsp))))  ; or lsp-deferred

;; (require 'lsp-python-ms)
;; (setq lsp-python-ms-auto-install-server t)
;; (add-hook 'python-mode-hook #'lsp) ; or lsp-deferred

;; (use-package lsp-jedi
;;   :ensure t)

;; (use-package lsp-python-ms
;;   :ensure t
;;   :hook (python-mode . (lambda ()
;;                          (require 'lsp-python-ms)
;;                          (lsp)))
;;   :init
;;   (setq lsp-python-ms-executable (executable-find "python-language-server")))

(use-package lsp-mode
  :hook
  ((python-mode . lsp)))

(use-package lsp-ui
  :commands lsp-ui-mode)

(provide 'init-python)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-python.el ends here


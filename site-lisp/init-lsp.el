;; init-lsp.el --- Initialize lsp configurations.  -*- lexical-binding: t -*-

;;; Commentary:
;;
;; Language Server Protocol configurations.
;;

;;; Code:

;; (eval-when-compile
;;   (require 'init-custom))

(pcase set-lsp
  ('eglot
   (use-package eglot
     :hook (prog-mode . eglot-ensure)))

  ('lsp-mode
   ;; Emacs client for the Language Server Protocol
   ;; https://github.com/emacs-lsp/lsp-mode#supported-languages
   (use-package lsp-mode
     :diminish lsp-mode
     :hook (prog-mode . lsp)
     :init
     (setq lsp-auto-guess-root t)       ; Detect project root
     (setq lsp-prefer-flymake nil)      ; Use lsp-ui and flycheck

     ;; Support LSP in org babel
     ;; https://github.com/emacs-lsp/lsp-mode/issues/377
     (cl-defmacro lsp-org-babel-enbale (lang)
       "Support LANG in org source code block."
       ;; (cl-check-type lang symbolp)
       (let* ((edit-pre (intern (format "org-babel-edit-prep:%s" lang)))
              (intern-pre (intern (format "lsp--%s" (symbol-name edit-pre)))))
         `(progn
            (defun ,intern-pre (info)
              (let ((lsp-file (or (->> info caddr (alist-get :file))
                                  buffer-file-name)))
                (setq-local buffer-file-name lsp-file)
                (setq-local lsp-buffer-uri (lsp--path-to-uri lsp-file))
                (lsp)))
            (if (fboundp ',edit-pre)
                (advice-add ',edit-pre :after ',intern-pre)
              (progn
                (defun ,edit-pre (info)
                  (,intern-pre info))
                (put ',edit-pre 'function-documentation
                     (format "Prepare local buffer environment for org source block (%s)."
                             (upcase ,lang))))))))

     (defvar org-babel-lang-list
       '("go" "python" "ipython" "ruby" "js" "css" "sass" "C" "rust" "java"))
     (dolist (lang org-babel-lang-list)
       (eval `(lsp-org-babel-enbale ,lang)))

     ;; LSP clients
     (setq lsp-clients-go-language-server-flags
           '("-gocodecompletion" "--format-style=\"goimports\"")))

   (use-package lsp-ui
     :bind (:map lsp-ui-mode-map
                 ([remap xref-find-definitions] . lsp-ui-peek-find-definitions)
                 ([remap xref-find-references] . lsp-ui-peek-find-references)
                 ("C-c u" . lsp-ui-imenu))
     :config
     (setq lsp-ui-doc-max-height 20
	   lsp-ui-doc-max-width 50
	   lsp-ui-sideline-ignore-duplicate t
	   lsp-ui-peek-always-show t))

   (use-package company-lsp)

   ;; C/C++/Objective-C support
   (use-package ccls
     :defines projectile-project-root-files-top-down-recurring
     :hook ((c-mode c++-mode objc-mode cuda-mode) . (lambda ()
                                                      (require 'ccls)
                                                      (lsp)))
     :config
     (with-eval-after-load 'projectile
       (setq projectile-project-root-files-top-down-recurring
             (append '("compile_commands.json"
                       ".ccls")
                     projectile-project-root-files-top-down-recurring))))

   ;; Python
   (use-package lsp-python-ms
     :ensure nil
     :hook (python-mode . lsp)
     :config

     ;; for dev build of language server
     (setq lsp-python-ms-dir
           (expand-file-name "~/Projects/Python/python-language-server/output/bin/Release/"))
     ;; for executable of language server, if it's not symlinked on your PATH
     (setq lsp-python-ms-executable
           "~/Projects/Python/python-language-server/output/bin/Release/gentoo-x64/publish/Microsoft.Python.LanguageServer"))


   ;; Haskell support
   (use-package lsp-haskell
     :hook (haskell-mode . (lambda ()
			     (require 'lsp)
                             (require 'lsp-haskell)
                             (lsp))))

   ;; Java support
   (use-package lsp-java
     :hook (java-mode . (lambda ()
                          (require 'lsp-java)
                          (lsp))))))


(provide 'init-lsp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-lsp.el ends here

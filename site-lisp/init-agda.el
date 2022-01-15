;; init-agda.el --- Initialize agda configurations.  -*- lexical-binding: t -*-

;;; Commentary:
;;
;; Python configuration.
;;

;;; Code:

;; (load-file (let ((coding-system-for-read 'utf-8))
;;                 (shell-command-to-string "agda-mode locate")))

;; (use-package paredit
;;   :hook (after-init-hook . enable-paredit-mode)
;;   :init())

;; (use-package smartparens
;;   :hook (after-init-hook . smartparens-mode)
;;   :init())

;; (use-package rainbow-delimiters
;;   :hook (after-init . rainbow-delimiters-mode)
;;   :init())

(load-file (let ((coding-system-for-read 'utf-8))
             (shell-command-to-string "agda-mode locate")))

(add-hook 'agda-mode-hook #'smartparens-mode)
(add-hook 'agda-mode-hook #'paredit-mode)
(add-hook 'agda-mode-hook #'rainbow-delimiters-mode)

(require 'agda2-highlight)

;; auto-load agda-mode for .agda and .lagda.md
(setq auto-mode-alist
   (append
     '(("\\.agda\\'" . agda2-mode)
       ("\\.lagda.md\\'" . agda2-mode))
     auto-mode-alist))

;; (load-file (let ((coding-system-for-read 'utf-8))
;; 	     (shell-command-to-string "agda-mode locate")))


;; (add-hook 'agda-mode-hook
;; 	  (lambda()
;; 	    (load-file (let ((coding-system-for-read 'utf-8))
;; 			 (shell-command-to-string "agda-mode locate")))))


;; (add-hook 'agda-mode-hook
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

(provide 'init-agda)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-agda.el ends here


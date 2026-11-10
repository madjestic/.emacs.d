;; init-ui.el --- Initialize ui configurations.  -*- lexical-binding: t -*-

;;; Commentary:
;;
;; AI configuration.
;;

;;; Code:

(use-package ai-code
  :config
  (ai-code-set-backend 'opencode)
  (global-set-key (kbd "C-c a") #'ai-code-menu))

(provide 'init-ai)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-ai.el ends here

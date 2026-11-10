;; init-ui.el --- Initialize ui configurations.  -*- lexical-binding: t -*-

;;; Commentary:
;;
;; UI configuration.
;;

;;; Code:

;; Buffers/Windows management
;(require 'workgroups)
;(require 'buffer-move)
(winner-mode t)

;; Misc
(cua-mode t)

;; Bars
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Disable PCSpeaker
(setq visible-bell t)

;; Line and Column
(setq-default fill-column 80)
(setq column-number-mode t)
;; (setq line-number-mode t)

;; Mouse & Smooth Scroll
;; Scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
(setq scroll-step 1
      scroll-margin 0
      scroll-conservatively 100000)

(setq redisplay-dont-pause t
      scroll-margin 5
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position 1)

;; All the icons
(use-package all-the-icons)
;; (use-package all-the-icons
;;  :init
;;  (setq all-the-icons-install-fonts f))

;; Display Time
(use-package time
  :ensure nil
  :unless (display-graphic-p)
  :hook (after-init . display-time-mode)
  :init
  (setq display-time-24hr-format t)
  (setq display-time-day-and-date t))

(setq redisplay-dont-pause t
      scroll-margin 5
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position 1)

(use-package rainbow-delimiters)
(use-package smartparens)

;; Emoji: 😄, 🤦, 🏴󠁧󠁢󠁳󠁣󠁴󠁿
(set-fontset-font t 'symbol "Apple Color Emoji")
(set-fontset-font t 'symbol "Noto Color Emoji" nil 'append)
(set-fontset-font t 'symbol "Segoe UI Emoji" nil 'append)
(set-fontset-font t 'symbol "Symbola" nil 'append)

;; Transparency
;; (set-frame-parameter nil 'alpha (list 100 60))

;; Modern Org Mode
;; Option 1: Per buffer
(add-hook 'org-mode-hook #'org-modern-mode)
(add-hook 'org-agenda-finalize-hook #'org-modern-agenda)

;; Option 2: Globally
(with-eval-after-load 'org (global-org-modern-mode))

(provide 'init-ui)

;; Modus Themes
(use-package modus-themes
  :ensure t
  :config
  ;; Your customizations here.  All customizations must be evaluated
  ;; BEFORE loading the theme.  Reload the theme for new customizations
  ;; to take effect.
  (setq modus-themes-italic-constructs t
        modus-themes-bold-constructs nil)

  (modus-themes-load-theme 'modus-operandi)

  (define-key global-map (kbd "<f5>") #'modus-themes-toggle))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-ui.el ends here

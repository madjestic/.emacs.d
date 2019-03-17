;; init-ui.el --- Initialize ui configurations.  -*- lexical-binding: t -*-

;;; Commentary:
;;
;; UI configuration.
;;

;;; Code:

;; Buffers/Windows management
(require 'workgroups)
(require 'buffer-move)
(winner-mode t)

;; Misc
(cua-mode t)

;; Bars
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

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
;;(use-package all-the-icons
;;  :init
;;  (setq all-the-icons-install-fonts t))

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

(provide 'init-ui)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-ui.el ends here

;;; init-package.el --- Initialize package configurations.	-*- lexical-binding: t -*-
;;; Commentary:
;;
;; Emacs Package management configurations.
;;

;;; Code:

(eval-when-compile)
;;  (require 'init-custom))

;; HACK: DO NOT copy package-selected-packages to init/custom file forcibly.
;; https://github.com/jwiegley/use-package/issues/383#issuecomment-247801751
(defun my-save-selected-packages (&optional value)
  "Set `package-selected-packages' to VALUE but don't save to `custom-file'."
  (when value
    (setq package-selected-packages value)))
(advice-add 'package--save-selected-packages :override #'my-save-selected-packages)

;;
;; Package archive
;;
(defun set-package-archives (archives)
  "Set specific package ARCHIVES repository."
  (interactive
   (list (intern (completing-read "Choose package archives: "
                                  '(gnu melpa melpa-stable org)))))

  (setq package-archives
        (let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                            (not (gnutls-available-p))))
               (proto (if no-ssl "http" "https")))
          (pcase archives
            ('melpa
             `(,(cons "gnu"          (concat proto "://elpa.gnu.org/packages/"))
               ,(cons "melpa"        (concat proto "://melpa.milkbox.net/packages/"))
	       ,(cons "melpa-stable" (concat proto "://stable.melpa.org/packages/"))
	       ,(cons "org"          (concat proto "://orgmode.org/elpa/"))))
            (archives
             (error "Unknown archives: '%s'" archives)))))

  (message "Set package archives to '%s'." archives))

;; Initialize packages
(unless (bound-and-true-p package--initialized) ; To avoid warnings in 27
  (setq package-enable-at-startup nil)          ; To prevent initializing twice
  (package-initialize))

;; Setup `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Should set before loading `use-package'
(eval-and-compile
  (setq use-package-always-ensure t)
  (setq use-package-always-defer t)
  (setq use-package-expand-minimally t)
  (setq use-package-enable-imenu-support t))

(eval-when-compile
  (require 'use-package))

;; Required by `use-package'
(use-package diminish)
(use-package bind-key)

;; Extensions
(use-package paradox
  :commands paradox-enable
  :hook (after-init . paradox-enable)
  :init
  (setq paradox-execute-asynchronously t)
  (setq paradox-github-token t)
  (defalias 'upgrade-packages 'paradox-upgrade-packages))

(provide 'init-package)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-package.el ends here

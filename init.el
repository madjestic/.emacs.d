;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (server-force-delete)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(border ((t nil)))
 '(company-dabbrev-downcase nil)
 '(company-dabbrev-ignore-case nil)
 '(company-idle-delay 0.2)
 '(company-minimum-prefix-length 2)
 '(company-quickhelp-delay 0.8)
 '(company-quickhelp-mode t)
 '(company-require-match nil)
 '(company-tooltip-align-annotations t)
 '(company-tooltip-limit 12)
 '(custom-safe-themes (quote (default)))
 '(display-line-numbers-type (quote relative))
 '(menu-bar-mode -1)
 ;; '(package-archives
 ;;   (quote
 ;;    (("gnu" . "https://elpa.gnu.org/packages/")
 ;;     ("melpa" . "http://melpa.milkbox.net/packages/")
 ;;     ("melpa-stable" . "http://stable.melpa.org/packages/")
 ;;     ("org" . "http://orgmode.org/elpa/"))))
 '(truncate-lines -1))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#2d3743" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "PfEd" :family "DejaVu Sans Mono"))))
 '(tabbar-button ((t (:background "#2d3743"))))
 '(tabbar-button-highlight ((t (:inherit tabbar-default :foreground "black"))))
 '(tabbar-default ((t (:inherit variable-pitch :background "#2d3743" :foreground "grey75"))))
 '(tabbar-highlight ((t (:background "#2d3743" :foreground "aquamarine"))))
 '(tabbar-modified ((t (:inherit tabbar-default :foreground "dark orange"))))
 '(tabbar-selected ((t (:inherit tabbar-default :foreground "medium sea green"))))
 '(tabbar-selected-modified ((t (:inherit tabbar-default :foreground "red"))))
 '(tabbar-unselected ((t (:inherit tabbar-default))))
 '(company-tooltip ((t (:background "dark slate gray" :foreground "black" :height 1.0))))
 '(company-tooltip-selection ((t (:background "orange1" :height 1.0))))
 '(cursor ((t (:background "#707080"))))
 '(custom-button ((t (:background "black" :foreground "gray60"))))
 '(custom-button-mouse ((t (:background "grey60" :foreground "black"))))
 '(fringe ((t (:background "#2d3743"))))
 '(highlight ((t (:background "chocolate"))))
 '(hl-line ((t (:inherit highlight :background "#454857"))))
 '(iedit-occurrence ((t (:inherit highlight))))
 '(link ((t (:foreground "dark turquoise" :underline t))))
 '(link-visited ((default (:inherit (link))) (((class color) (background light)) (:foreground "magenta4")) (((class color) (background dark)) (:foreground "violet"))))
 '(menu ((t (:background "#222244" :foreground "#797985" :inverse-video t))))
 '(minimap-active-region-background ((t (:background "#454857"))))
 '(minimap-font-face ((t (:height 0.1))))
 '(popup-tip-face ((t (:background "#797985" :foreground "black" :height 1.0))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "aqua"))))
 '(region ((t (:background "blue3"))))
 '(speedbar-button-face ((t (:foreground "green3" :height 0.8))))
 '(speedbar-directory-face ((t (:foreground "steel blue" :height 0.8))))
 '(speedbar-file-face ((t (:foreground "light blue" :height 0.8))))
 '(speedbar-highlight-face ((t (:background "sea green" :height 0.8))))
 '(speedbar-selected-face ((t (:foreground "red" :underline t :height 0.8))))
 '(speedbar-separator-face ((t (:background "blue" :foreground "white" :overline "gray" :height 0.8))))
 '(speedbar-tag-face ((t (:foreground "yellow" :height 0.8))))
 '(tabbar-button ((t (:background "#2d3743"))))
 '(tabbar-button-highlight ((t (:inherit tabbar-default :foreground "black"))))
 '(tabbar-default ((t (:inherit variable-pitch :background "#2d3743" :foreground "grey75"))))
 '(tabbar-highlight ((t (:background "#2d3743" :foreground "aquamarine"))))
 '(tabbar-modified ((t (:inherit tabbar-default :foreground "dark orange"))))
 '(tabbar-selected ((t (:inherit tabbar-default :foreground "medium sea green"))))
 '(tabbar-selected-modified ((t (:inherit tabbar-default :foreground "red"))))
 '(tabbar-unselected ((t (:inherit tabbar-default))))
 '(tooltip ((t (:inherit variable-pitch :background "#797985" :foreground "black" :height 0.8))))
 '(vertical-border ((t (:foreground "#1d2733"))))
 '(vhdl-speedbar-architecture-face ((t (:foreground "LightSkyBlue" :height 0.8))))
 '(vhdl-speedbar-architecture-selected-face ((t (:foreground "LightSkyBlue" :underline t :height 0.8))))
 '(vhdl-speedbar-package-face ((t (:foreground "Grey80" :height 0.8))))
 '(vhdl-speedbar-package-selected-face ((t (:foreground "Grey80" :underline t :height 0.8))))
 '(vline ((t (:background "#454857")))))
;; (load-theme 'schrodinger)

;; Load path
;; Optimize: Force "lisp"" and "site-lisp" at the head to reduce the startup time.
(defun update-load-path (&rest _)
  "Update `load-path'."
  (push (expand-file-name "site-lisp" user-emacs-directory) load-path)
  (push (expand-file-name "lisp" user-emacs-directory) load-path)
  (push "." load-path))

(defun add-subdirs-to-load-path (&rest _)
  "Add subdirectories to `load-path'."
  (let ((default-directory
          (expand-file-name "site-lisp" user-emacs-directory)))
    (normal-top-level-add-subdirs-to-load-path)))

(advice-add #'package-initialize :after #'update-load-path)
(advice-add #'package-initialize :after #'add-subdirs-to-load-path)

(update-load-path)

(require 'init-custom)
(require 'init-package)
(require 'init-basic)
(require 'init-ui)
(require 'init-lsp)
(require 'init-company)
(require 'init-c)
(require 'init-vcs)
(require 'buffer-move)
(require 'workgroups)

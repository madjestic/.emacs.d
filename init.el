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
 '(custom-safe-themes
   (quote
    ("2748a0149762548d2ddcc4a1fc666cb52e78246400fbae3f8e5ff3e25c13f0bc" "d314947b3144046926659543b30b607265b31d6e6b47f992c87c41a4683d45d6" "c3ce5946a3e1c705cb88b3146891b65ce157c98b54e5d72880fff59cfc690da3" "3a87550548feeb7d1bcc2208b08274ab3af2e2c34f2ea642792bca9f31d3db1a" "246161088293704279682834ad7918a85bea4109aade6f8fdcc2d8d1f5bddafd" "ca9cd44ca312101e88d22aabd00c51e3df2cf23f6d4940eade34218c9e0f2996" "" default)))
 '(menu-bar-mode f)
 '(package-archives
   (quote
    (("gnu" . "https://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.milkbox.net/packages/")
     ("melpa-stable" . "http://stable.melpa.org/packages/")
     ("org" . "http://orgmode.org/elpa/"))))
 '(package-selected-packages (quote (use-package iedit)))
 '(border ((t nil)))
 '(display-line-numbers-type (quote relative)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#2d3743" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "PfEd" :family "DejaVu Sans Mono"))))
 '(cursor ((t (:background "#707080"))))
 '(custom-button ((t (:background "black" :foreground "gray60"))))
 '(custom-button-mouse ((t (:background "grey60" :foreground "black"))))
 '(fringe ((t (:background "#2d3743"))))
 '(highlight ((t (:background "chocolate"))))
 '(hl-line ((t (:inherit highlight :background "#454857"))))
 '(iedit-occurrence ((t (:inherit highlight))))
 '(link ((((class color) (min-colors 88) (background light)) (:underline (:color foreground-color :style line) :foreground "RoyalBlue3")) (((class color) (background light)) (:underline (:color foreground-color :style line) :foreground "blue")) (((class color) (min-colors 88) (background dark)) (:underline (:color foreground-color :style line) :foreground "cyan1")) (((class color) (background dark)) (:underline (:color foreground-color :style line) :foreground "cyan")) (t (:inherit (underline)))))
 '(link-visited ((default (:inherit (link))) (((class color) (background light)) (:foreground "magenta4")) (((class color) (background dark)) (:foreground "violet"))))
 '(menu ((t (:background "#222244" :foreground "#797985" :inverse-video t))))
 '(minimap-active-region-background ((t (:background "#454857"))))
 '(minimap-font-face ((t (:height 0.1))))
 '(popup-tip-face ((t (:background "#797985" :foreground "black" :height 0.8))))
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

(require 'init-ui)
(require 'init-package)
(require 'init-basic)
(require 'init-vcs)
(require 'init-c)
(require 'init-company)

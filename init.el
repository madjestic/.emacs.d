;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (server-force-delete)
;; (package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(border ((t nil)))
 '(browse-url-browser-function 'browse-url-generic)
 '(browse-url-generic-program "chromium-browser")
 '(circe-default-directory "~/.circe")
 '(circe-format-self-say "me > {body}")
 '(company-dabbrev-downcase nil)
 '(company-dabbrev-ignore-case nil)
 '(company-idle-delay 0.2)
 '(company-minimum-prefix-length 2)
 '(company-quickhelp-delay 0.8)
 '(company-quickhelp-mode t)
 '(company-require-match nil)
 '(company-tooltip-align-annotations t)
 '(company-tooltip-limit 12)
 '(custom-safe-themes '(default))
 '(display-line-numbers-type 'absolute)
 '(eldoc-echo-area-use-multiline-p 'truncate-sym-name-if-fit)
 '(exec-path
   '("/home/madjestic/bin" "/home/madjestic/.local/bin" "/usr/local/lib" "/usr/lib/llvm/8/bin" "/usr/lib/llvm/7/bin" "/usr/lib/llvm/6/bin" "/usr/local/sbin" "/usr/local/bin" "/usr/sbin" "/usr/bin" "/sbin" "/bin" "/opt/bin" "/usr/games/bin" "/opt/cuda/bin" "/opt/cuda/libnvvp" "/usr/libexec/emacs/26.2/x86_64-pc-linux-gnu"))
 '(global-eldoc-mode nil)
 '(irony-eldoc-use-unicode t)
 '(lsp-eldoc-enable-hover t)
 '(lsp-ui-doc-header t)
 '(lsp-ui-doc-include-signature t)
 '(lsp-ui-doc-max-height 20)
 '(lsp-ui-doc-max-width 50)
 '(lsp-ui-doc-position 'top)
 '(lsp-ui-doc-use-childframe t)
 '(lsp-ui-peek-always-show t)
 '(lsp-ui-peek-fontify 'always)
 '(lsp-ui-sideline-ignore-duplicate t)
 '(lsp-ui-sideline-show-hover t)
 '(menu-bar-mode -1)
 '(neo-theme 'icons)
 '(org-roam-directory "/home/madjestic/org-roam")
 '(org-roam-index-file "/home/madjestic/org-roam/index.org")
 '(org-roam-tag-sources '(prop all-directories))
 '(package-selected-packages
   '(projectile-ripgrep ripgrep helm-projectile projectile helm-rg rg swiper-helm json-mode company-glsl glsl-mode flycheck-irony company-math math-symbol-lists graphviz-dot-mode all-the-icons org-journal deft xah-find org-pdftools pdf-tools ac-octave org-download company-org-roam org-roam org-roam-server company-irony-c-headers company-irony irony-eldoc irony cquery modern-cpp-font-lock flymake-rust flycheck-rust cargo magit circe rainbow-delimiters smartparens paredit company-c-headers company-quickhelp company-box openwith sr-speedbar neotree move-text iedit yafolding tabbar helm paradox diminish use-package))
 '(truncate-lines -1))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#2d3743" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "PfEd" :family "DejaVu Sans Mono"))))
 '(agda2-highlight-datatype-face ((t (:foreground "SpringGreen"))))
 '(agda2-highlight-function-face ((t (:foreground "LightSkyBlue"))))
 '(agda2-highlight-inductive-constructor-face ((t (:foreground "NavajoWhite"))))
 '(agda2-highlight-keyword-face ((t (:foreground "DeepSkyBlue"))))
 '(agda2-highlight-module-face ((t (:foreground "PaleGreen"))))
 '(agda2-highlight-primitive-type-face ((t (:foreground "white"))))
 '(agda2-highlight-string-face ((t (:foreground "LightSalmon"))))
 '(company-tooltip ((t (:background "dark slate gray" :foreground "black" :height 1.0))))
 '(company-tooltip-selection ((t (:background "orange1" :height 1.0))))
 '(cursor ((t (:background "#707080"))))
 '(custom-button ((t (:background "black" :foreground "gray60"))))
 '(custom-button-mouse ((t (:background "grey60" :foreground "black"))))
 '(custom-button-unraised ((t (:inherit nil :background "black"))))
 '(fringe ((t (:background "#2d3743"))))
 '(highlight ((t (:background "chocolate"))))
 '(hl-line ((t (:inherit highlight :background "#454857"))))
 '(iedit-occurrence ((t (:inherit highlight))))
 '(line-number-current-line ((t (:inherit default))))
 '(link ((t (:foreground "dark turquoise" :underline t))))
 '(link-visited ((default (:inherit (link))) (((class color) (background light)) (:foreground "magenta4")) (((class color) (background dark)) (:foreground "violet"))))
 '(lsp-face-highlight-read ((t (:inherit lazy-highlight :underline t))))
 '(lsp-face-highlight-textual ((t (:inherit lazy-highlight))))
 '(lsp-face-highlight-write ((t (:inherit lazy-highlight :slant italic))))
 '(lsp-ui-peek-line-number ((t (:foreground "grey"))))
 '(lsp-ui-sideline-current-symbol ((t (:foreground "orange" :box (:line-width -1 :color "white") :weight ultra-bold :height 0.99))))
 '(lsp-ui-sideline-symbol ((t (:foreground "dark orange" :box (:line-width -1 :color "grey") :height 0.99))))
 '(lsp-ui-sideline-symbol-info ((t (:foreground "yellow" :slant italic :height 0.99))))
 '(menu ((t (:background "#222244" :foreground "#797985" :inverse-video t))))
 '(minibuffer-prompt ((t (:foreground "MediumAquamarine"))))
 '(minimap-active-region-background ((t (:background "#454857"))))
 '(minimap-font-face ((t (:height 0.1))))
 '(popup-tip-face ((t (:background "#797985" :foreground "black" :height 1.0))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "deep sky blue"))))
 '(rainbow-delimiters-depth-2-face ((t (:inherit rainbow-delimiters-base-face :foreground "yellow"))))
 '(rainbow-delimiters-depth-3-face ((t (:inherit rainbow-delimiters-base-face :foreground "green"))))
 '(rainbow-delimiters-depth-4-face ((t (:inherit rainbow-delimiters-base-face :foreground "magenta"))))
 '(rainbow-delimiters-depth-5-face ((t (:inherit rainbow-delimiters-base-face :foreground "orange"))))
 '(rainbow-delimiters-depth-6-face ((t (:inherit rainbow-delimiters-base-face :foreground "red"))))
 '(rainbow-delimiters-depth-7-face ((t (:inherit rainbow-delimiters-base-face :foreground "white"))))
 '(rainbow-delimiters-depth-8-face ((t (:inherit rainbow-delimiters-base-face :foreground "black"))))
 '(rainbow-delimiters-unmatched-face ((t (:inherit rainbow-delimiters-base-face :foreground "red"))))
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
 '(tabbar-modified ((t (:inherit tabbar-default :foreground "red"))))
 '(tabbar-selected ((t (:inherit tabbar-default :foreground "medium sea green"))))
 '(tabbar-selected-modified ((t (:inherit tabbar-default :foreground "dark orange"))))
 '(tabbar-unselected ((t (:inherit tabbar-default))))
 '(tooltip ((t (:inherit variable-pitch :background "#797985" :foreground "black" :height 0.8))))
 '(vertical-border ((t (:foreground "#1d2733"))))
 '(vhdl-speedbar-architecture-face ((t (:foreground "LightSkyBlue" :height 0.8))))
 '(vhdl-speedbar-architecture-selected-face ((t (:foreground "LightSkyBlue" :underline t :height 0.8))))
 '(vhdl-speedbar-package-face ((t (:foreground "Grey80" :height 0.8))))
 '(vhdl-speedbar-package-selected-face ((t (:foreground "Grey80" :underline t :height 0.8))))
 '(vline ((t (:background "#454857"))))
 '(widget-field ((t (:background "gray50")))))

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)

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

(advice-add 'package-initialize :after 'update-load-path)
(advice-add 'package-initialize :after 'add-subdirs-to-load-path)

(update-load-path)

(require 'init-custom)
(require 'init-package)
(require 'init-basic)
(require 'init-ui)
;(require 'init-lsp)
(require 'init-company)
(require 'init-c)
;(require 'init-haskell)
(require 'init-rust)
;(require 'init-agda)
(require 'init-vcs)
(require 'init-circe)

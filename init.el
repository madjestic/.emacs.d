;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(server-force-delete)
;; (package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(border ((t nil)))
 '(browse-url-browser-function 'browse-url-generic)
 '(browse-url-generic-program "google-chrome-stable")
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
 '(dired-listing-switches "-laht")
 '(display-line-numbers-type 'absolute)
 '(eldoc-echo-area-use-multiline-p 'truncate-sym-name-if-fit)
 '(global-eldoc-mode nil)
 '(irony-eldoc-use-unicode t)
 '(lsp-eldoc-enable-hover t)
 '(neo-theme 'icons)
 '(org-roam-index-file "/home/madjestic/org-roam/index.org")
 '(org-roam-tag-sources '(prop all-directories))
 '(package-selected-packages
   '(all-the-icons buffer-move buttercup cargo circe company-box company-c-headers
		   company-glsl company-quickhelp copilot cquery deft diminish
		   flycheck-rust ggtags glsl-mode haskell-mode haskell-snippets
		   helm-gtags helm-rg iedit lsp-haskell lsp-ui magit
		   modern-cpp-font-lock move-text neotree openwith org-download
		   org-journal ormolu paredit pdf-tools rainbow-delimiters
		   rust-mode session smartparens sr-speedbar tabbar with-editor
		   yafolding yasnippet))
 '(package-vc-selected-packages
   '((copilot :url "https://github.com/copilot-emacs/copilot.el" :branch "main")))
 '(pdf-view-midnight-colors '("#839496" . "dark slate gray"))
 '(session-use-package t nil (session))
 '(truncate-lines -1)
 '(visible-bell t)
 '(warning-minimum-level :error))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#2d3743" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :foundry "PfEd" :family "DejaVu Sans Mono"))))
 '(agda2-highlight-datatype-face ((t (:foreground "SpringGreen"))))
 '(agda2-highlight-function-face ((t (:foreground "LightSkyBlue"))))
 '(agda2-highlight-inductive-constructor-face ((t (:foreground "NavajoWhite"))))
 '(agda2-highlight-keyword-face ((t (:foreground "DeepSkyBlue"))))
 '(agda2-highlight-module-face ((t (:foreground "PaleGreen"))))
 '(agda2-highlight-primitive-type-face ((t (:foreground "white"))))
 '(agda2-highlight-string-face ((t (:foreground "LightSalmon"))))
 '(ansi-color-blue ((t (:background "deep sky blue" :foreground "deep sky blue"))))
 '(company-tooltip ((t (:background "dark slate gray" :foreground "black" :height 1.0))))
 '(company-tooltip-selection ((t (:background "orange1" :height 1.0))))
 '(cursor ((t (:background "#707080"))))
 '(custom-button ((t (:background "black" :foreground "gray60"))))
 '(custom-button-mouse ((t (:background "grey60" :foreground "black"))))
 '(custom-button-unraised ((t (:inherit nil :background "black"))))
 '(ediff-even-diff-A ((t (:extend t :background "dark red"))))
 '(ediff-even-diff-B ((t (:extend t :background "olive drab"))))
 '(ediff-odd-diff-A ((t (:extend t :background "brown"))))
 '(ediff-odd-diff-B ((t (:extend t :background "dark olive green"))))
 '(fringe ((t (:background "#2d3743"))))
 '(highlight ((t (:background "chocolate3"))))
 '(hl-line ((t (:inherit highlight :background "#454857"))))
 '(iedit-occurrence ((t (:inherit highlight))))
 '(line-number-current-line ((t (:inherit default))))
 '(link ((t (:foreground "dark turquoise" :underline t))))
 '(link-visited ((default (:inherit (link))) (((class color) (background light)) (:foreground "magenta4")) (((class color) (background dark)) (:foreground "violet"))))
 '(lsp-face-highlight-read ((t (:background "dark cyan" :underline t))))
 '(lsp-face-highlight-write ((t (:background "dark slate gray" :weight bold))))
 '(menu ((t (:background "#222244" :foreground "#797985" :inverse-video t))))
 '(minibuffer-prompt ((t (:foreground "MediumAquamarine"))))
 '(minimap-active-region-background ((t (:background "#454857"))))
 '(minimap-font-face ((t (:height 0.1))))
 '(popup-tip-face ((t (:background "#797985" :foreground "black" :height 1.0))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "deep sky blue"))))
 '(rainbow-delimiters-depth-10-face ((t (:inherit rainbow-delimiters-base-face :foreground "blue"))))
 '(rainbow-delimiters-depth-11-face ((t (:inherit rainbow-delimiters-base-face :foreground "dark violet"))))
 '(rainbow-delimiters-depth-12-face ((t (:inherit rainbow-delimiters-base-face :foreground "magenta"))))
 '(rainbow-delimiters-depth-13-face ((t (:inherit rainbow-delimiters-base-face :foreground "indian red"))))
 '(rainbow-delimiters-depth-14-face ((t (:inherit rainbow-delimiters-base-face :foreground "sienna"))))
 '(rainbow-delimiters-depth-15-face ((t (:inherit rainbow-delimiters-base-face :foreground "goldenrod"))))
 '(rainbow-delimiters-depth-16-face ((t (:inherit rainbow-delimiters-base-face :foreground "lime green"))))
 '(rainbow-delimiters-depth-2-face ((t (:inherit rainbow-delimiters-base-face :foreground "yellow"))))
 '(rainbow-delimiters-depth-3-face ((t (:inherit rainbow-delimiters-base-face :foreground "green"))))
 '(rainbow-delimiters-depth-4-face ((t (:inherit rainbow-delimiters-base-face :foreground "magenta"))))
 '(rainbow-delimiters-depth-5-face ((t (:inherit rainbow-delimiters-base-face :foreground "orange"))))
 '(rainbow-delimiters-depth-6-face ((t (:inherit rainbow-delimiters-base-face :foreground "red"))))
 '(rainbow-delimiters-depth-7-face ((t (:inherit rainbow-delimiters-base-face :foreground "white"))))
 '(rainbow-delimiters-depth-8-face ((t (:inherit rainbow-delimiters-base-face :foreground "black"))))
 '(rainbow-delimiters-depth-9-face ((t (:inherit rainbow-delimiters-base-face :foreground "gray"))))
 '(rainbow-delimiters-unmatched-face ((t (:inherit rainbow-delimiters-base-face :foreground "red"))))
 '(region ((t (:extend t :background "dark cyan"))))
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

;; Load path
;; Optimize: Force "lisp"" and "site-lisp" at the head to reduce the startup time.
(defun update-load-path (&rest _)
  "Update `load-path'."
  (push (expand-file-name "site-lisp" user-emacs-directory) load-path)
  (push "." load-path))

(defun add-subdirs-to-load-path (&rest _)
  "Add subdirectories to `load-path'."
  (let ((default-directory
          (expand-file-name "site-lisp" user-emacs-directory)))
    (normal-top-level-add-subdirs-to-load-path)))

(advice-add 'package-initialize :after 'update-load-path)
;(advice-add 'package-initialize :after 'add-subdirs-to-load-path)

(update-load-path)

;(all-the-icons-install-fonts f)

(require 'init-custom)
(require 'init-package)
(require 'init-basic)
(require 'init-ui)
(require 'init-company)
(require 'init-c)
;;(require 'init-cpp)
(require 'init-haskell)
(require 'init-python)
(require 'init-vcs)
(require 'init-ai)
;;(require 'init-rust)
;;(require 'init-agda)
;;(require 'init-circe)

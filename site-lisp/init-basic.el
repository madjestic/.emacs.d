;; init-basic.el --- Initialize basic configurations.  -*- lexical-binding: t -*-

;;; Commentary:
;;
;; Basic configuration.
;;

;;; Code:

;; (eval-when-compile
;;   (require 'init-const)
;;   (require 'init-custom))

;; Start server
(use-package server
  :ensure nil
  :hook (after-init . server-mode))

;; Helm
(use-package helm
  :demand t
  :config
  ;;(require 'helm-config)
  (require 'helm)
  :bind (("M-x"      . helm-M-x)
  	 ("C-c M-o"  . helm-occur)
	 ("C-c M-r"  . helm-rg)
  	 ("<f1> SPC" . helm-all-mark-rings) ; I modified the keybinding 
  	 ("M-y"      . helm-show-kill-ring)
  	 ("C-c h x"  . helm-register)    ; C-x r SPC and C-x r j)
  	 ("C-c h g"   . helm-google-suggest)
  	 ("C-c h M-:" . helm-eval-expression-with-eldoc)
  	 ("C-x C-f"   . helm-find-files)
  	 ("C-x b"     . helm-mini)      ; *<major-mode> or /<dir> or !/<dir-not-desired> or @<regexp>
  	 :map helm-map
  	 ("<tab>" . helm-execute-persistent-action) ; rebind tab to run persistent action
  	 ("C-i" . helm-execute-persistent-action) ; make TAB works in terminal
  	 ("C-z" . helm-select-action) ; list actions using C-z
  	 :map minibuffer-local-map
  	 ("C-c C-l" . helm-minibuffer-history))
  :hook (after-init . helm-mode)
  :init (setq helm-buffers-fuzzy-matching           t
	      helm-M-x-fuzzy-match                  t
  	      helm-recentf-fuzzy-match              t
  	      helm-semantic-fuzzy-match             t
	      helm-imenu-fuzzy-match                t
	      helm-locate-fuzzy-match               t
	      helm-apropos-fuzzy-match              t
	      helm-lisp-fuzzy-completion            t
	      helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
	      helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
	      helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
	      helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
	      helm-ff-file-name-history-use-recentf t
	      helm-echo-input-in-header-line        t
	      helm-autoresize-max-height            0
	      helm-autoresize-min-height            20))

(use-package helm-rg
  :hook (after-init . helm-mode)
  :init())

;; Tabbar
(use-package tabbar
  :hook (after-init . tabbar-mode)
  :init (setq tabbar-buffer-groups-function 'tabbar-buffer-groups
  	      tabbar-background-color nil
  	      tabbar-mwheel-mode t
  	      tabbar-use-images nil)
  )

;; Minimap
(use-package minimap
  :ensure nil
  :bind (("C-c m" . minimap-mode))
  :init (setq minimap-always-recenter  nil
	      minimap-dedicated-window t
	      minimap-enlarge-certain-faces (quote always)
	      minimap-recenter-type (quote relative)
	      minimap-update-delay 2.0
	      minimap-width-fraction 0.1
	      minimap-window-location (quote right)))

;; History
(use-package saveplace
  :ensure nil
  :hook (after-init . save-place-mode))

(use-package recentf
  :ensure nil
  :bind(("\C-x\ \C-r" . recentf-open-files))
  :hook (after-init   . recentf-mode)
  :init
  (setq recentf-max-saved-items 200)
  (setq recentf-exclude '((expand-file-name package-user-dir)
                          ".cache"
                          ".cask"
                          ".elfeed"
                          "bookmarks"
                          "cache"
                          "ido.*"
                          "persp-confs"
                          "recentf"
                          "url"
                          "COMMIT_EDITMSG\\'")))

(use-package savehist
  :ensure nil
  :hook (after-init . savehist-mode)
  :init (setq enable-recursive-minibuffers t ; Allow commands in minibuffers
	      history-length 1000
	      savehist-additional-variables '(mark-ring
					      global-mark-ring
					      search-ring
					      regexp-search-ring
					      extended-command-history)
	      savehist-autosave-interval 300))

(use-package session
  :ensure nil
  :hook (after-init-hook . session-initialize)
  :init ())
;; (autoload 'save-current-configuration "revive" "Save status" t)
;; (autoload 'resume "revive" "Resume Emacs" t)
;; (autoload 'wipe "revive" "Wipe Emacs" t)

(use-package recentf
  :ensure nil
  :hook (after-init . recentf-mode)
  :init (setq recentf-max-menu-items 25))

(use-package yafolding
  :bind (("M-RET" . yafolding-toggle-element))
  :hook (json-mode . yafolding-mode)
  :init ())

;; PATH
(setenv "PATH" (concat (getenv "PATH") ":~/bin"))
(setenv "PATH" (concat (getenv "PATH") "/home/madjestic/bin"))
(setenv "PATH" (concat (getenv "PATH") "/home/madjestic/.local/bin"))

;;
;; Buffers
;;

(windmove-default-keybindings)
(use-package buffer-move)

(global-set-key (kbd "<C-S-up>")     'buf-move-up)
(global-set-key (kbd "<C-S-down>")   'buf-move-down)
(global-set-key (kbd "<C-S-left>")   'buf-move-left)
(global-set-key (kbd "<C-S-right>")  'buf-move-right)


;;
;; Hotkeys
;;

(global-set-key (kbd "M-<up>")     'paredit-splice-sexp)
(global-set-key (kbd "C-c l")      'org-store-link)
(global-set-key (kbd "C-c a")      'org-agenda)
(global-set-key (kbd "C-c C-S-l")  'org-store-link)
(global-set-key (kbd "C-c C-S-c")  'org-capture)
(global-set-key (kbd "C-c C-S-a")  'org-agenda)
(global-set-key (kbd "C-c C-S-b")  'org-iswitchb)
(global-set-key (kbd "C-c a")      'org-agenda)
(global-set-key (kbd "C-c C-r")    'find-alternate-file)
;; (global-set-key (kbd "C-c h")      'vline-mode)
(global-set-key (kbd "C-c h")      'xhair-mode)
(global-set-key (kbd "C-c t")      'toggle-truncate-lines)
(global-set-key (kbd "M-#")        'next-word)
(global-set-key (kbd "C-M-g")      'revert-buffer)
(global-set-key (kbd "C-x C-k")    'kill-all-dired-buffers)
(global-set-key (kbd "C-c M-n")    'display-line-numbers-mode)

(use-package iedit
	     :bind (("C-;"         . helm-M-x)))
(global-set-key (kbd "C-;")        'iedit-mode)
(global-set-key (kbd "M-+")        'text-scale-increase)
(global-set-key (kbd "M-_")        'text-scale-decrease)
(use-package move-text)
(global-set-key (kbd "M-S-<up>")   'move-text-up)
(global-set-key (kbd "M-S-<down>") 'move-text-down)
(global-set-key (kbd "M-^")        'server-force-delete)

(use-package neotree
  :bind (("C-c f" . neotree-toggle))
  :init
  (require 'neotree)
  :config
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
  (setq neo-smart-open t)
  (setq neo-window-fixed-size nil)
  (setq neo-window-width 40))

(use-package sr-speedbar
  :bind (("C-c s" . sr-speedbar-toggle))
  :hook (after-create-hook . (quote (speedbar-frame-reposition-smartly)))
  :config (setq sr-speedbar-right-side nil
		speedbar-show-unknown-files t
		sr-speedbar-width 35
		sr-speedbar-max-width 35
		speedbar-frame-parameters
		(quote
		 ((minibuffer)
		  (width . 10)
		  (border-width . 0)
		  (menu-bar-lines . 0)
		  (tool-bar-lines . 0)
		  (unsplittable . t)
		  (left-fringe . 0)))
		speedbar-use-images nil
		speedbar-hide-button-brackets-flag t
		))
(global-set-key (kbd "C-c M-m")    'menu-bar-mode)
(global-set-key (kbd "C-c b")      'flymake-compile) ;; build with flymake/Makefile
(global-set-key (kbd "C-M-y")      'secondary-dwim)
(global-set-key (kbd "C-x p")      'winstack-push)
(global-set-key (kbd "C-x M-p")    'winstack-pop)
(global-set-key (kbd "M-j")        'tabbar-backward)
(global-set-key (kbd "M-k")        'tabbar-forward)
(global-set-key (kbd "C-x M-o")    'previous-multiframe-window)
(global-set-key (kbd "C-x o")      'next-multiframe-window)
;; (global-set-key (kbd "C-x o")      (lambda ()
;;                                      (interactive)
;;                                      (other-window -1)))


;; Haskell Mode
;;(global-set-key (kbd "C-c C-c")    'haskell-compile)

(use-package openwith
  :hook (after-init . openwith-mode)
  :init 
  (setq openwith-associations '(("\\.hipnc\\'" "houdini_emacs" (file))
				("\\.hip\\'"   "houdini_emacs" (file))
				("\\.pic\\'"   "mplay_emacs"   (file))
				("\\.picnc\\'" "mplay_emacs"   (file))
				("\\.3b\\'"    "3D-coat"       (file))
				("\\.mkv\\'"   "mpv"           (file))
				("\\.mp4\\'"   "mpv"           (file))
				("\\.mov\\'"   "mpv"           (file))
				("\\.avi\\'"   "mpv"           (file))
				("\\.djvu\\'"  "djview"        (file))
				("\\.wav\\'"   "aplay"         (file))
				)))

;;
;; Functions
;;

(defun tabbar-buffer-groups ()
  "Return the list of group names the current buffer belongs to.
This function is a custom function for tabbar-mode's tabbar-buffer-groups.
This function group all buffers into 3 groups:
Those Dired, those user buffer, and those emacs buffer.
Emacs buffer are those starting with “*”."
  (list
   (cond
    ((string-equal "*" (substring (buffer-name) 0 1))
     "Emacs Buffer"
     )
    ((eq major-mode 'dired-mode)
     "Dired"
     )
    (t
     "User Buffer"
     )
    ))) 


(defvar winstack-stack '()
  "A Stack holding window configurations.
  Use `winstack-push' and
  `winstack-pop' to modify it.")

(defun winstack-push()
  "Push the current window configuration onto `winstack-stack'."
  (interactive)
  (if (and (window-configuration-p (first winstack-stack))
           (compare-window-configurations (first winstack-stack) (current-window-configuration)))
      (message "Current config already pushed")
    (progn (push (current-window-configuration) winstack-stack)
           (message (concat "pushed " (number-to-string
                                       (length (window-list (selected-frame)))) " frame config")))))

(defun winstack-pop()
  "Pop the last window configuration off `winstack-stack' and apply it."
  (interactive)
  (if (first winstack-stack)
      (progn (set-window-configuration (pop winstack-stack))
             (message "popped"))
    (message "End of window stack")))

(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
         user-emacs-directory)
        ((boundp 'user-init-directory)
         user-init-directory)
        (t "~/.emacs.d/")))

(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file user-init-dir)))

(defun kill-all-dired-buffers ()
  "Kill all dired buffers."
  (interactive)
  (save-excursion
    (let ((count 0))
      (dolist (buffer (buffer-list))
        (set-buffer buffer)
        (when (equal major-mode 'dired-mode)
          (setq count (1+ count))
          (kill-buffer buffer)))
      (message "Killed %i dired buffer(s)." count))))

(defun kill-other-buffers ()
  "Kill all other buffers."
  (interactive)
  (mapc 'kill-buffer 
        (delq (current-buffer) 
	      (remove-if-not 'buffer-file-name (buffer-list)))))

(defun next-word ()
  "Goto next word."
  (interactive)
  (forward-word 1)
  (forward-word 1)
  (backward-word 1)
  )

(defun truncate-lines ()
  (interactive)
  (toggle-truncate-lines))

;;;;;;;;;;;;;;;;
;;; Org-Roam ;;;
;;;;;;;;;;;;;;;;

;; -*- emacs-lisp -*-
(unless package-archive-contents    ;; Refresh the packages descriptions
  (package-refresh-contents))
(setq package-load-list '(all))     ;; List of packages to load
(unless (package-installed-p 'org)  ;; Make sure the Org package is
  (package-install 'org))           ;; installed, install it if not
(package-initialize)                ;; Initialize & Install Package
;; (setq org-...)

(setq org-roam-v2-ack t)

(use-package org-journal
  :after org
  :bind
  ("C-c n n" . org-journal-new-entry)
  :custom
  (org-journal-date-prefix "#+title: ")
  (org-journal-file-format "%Y-%m-%d.org")
  (org-journal-dir "/home/madjestic/org-roam/")
  (org-journal-date-format "%A, %d %B %Y"))

;; (use-package org-roam
;;       :hook
;;       (after-init . org-roam-mode)
;;       :custom
;;       (org-roam-directory "/home/madjestic/org-roam/")
;;       :bind (:map org-roam-mode-map
;;               (("C-c n l" . org-roam) ;; toggle links window
;;                ("C-c n f" . org-roam-find-file)
;;                ("C-c n j" . org-roam-jump-to-index)
;;                ("C-c n b" . org-roam-switch-to-buffer)
;;                ("C-c n g" . org-roam-graph))
;;               :map org-mode-map
;;               (("C-c n i" . org-roam-insert))))

(use-package deft
  :after org
  :bind
  ("C-c n d" . deft)
  :custom
  (deft-recursive t)
  (deft-use-filter-string-for-filename t)
  (deft-default-extension "org")
  (deft-directory "/home/madjestic/org-roam/"))

(use-package org-download
  :after org
  :bind
  (:map org-mode-map
        (("s-Y" . org-download-screenshot)
         ("s-y" . org-download-yank))))

(setq org-todo-keywords
      '((sequence "TODO" "IN-PROGRESS" "BLOCKED" "CANCELED" "DONE")))

(use-package pdf-tools)

(all-the-icons-install-fonts t)
;(async-shell-command
;(shell-command "fc-cache -f")


(provide 'init-basic)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-basic.el ends here

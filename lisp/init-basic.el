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
  (require 'helm-config)
  (require 'helm)
  :bind (("M-x"      . helm-M-x)
  	 ("C-c h o"  . helm-occur)
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
;; History
(use-package saveplace
  :ensure nil
  :hook (after-init . save-place-mode))

(use-package recentf
  :ensure nil
  :hook (after-init . recentf-mode)
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
  :init ()
  (autoload 'save-current-configuration "revive" "Save status" t)
  (autoload 'resume "revive" "Resume Emacs" t)
  (autoload 'wipe "revive" "Wipe Emacs" t))

(winner-mode t)

(use-package recentf
  :ensure nil
  :hook (after-init . recentf-mode)
  :init (setq recentf-max-menu-items 25))

;; PATH
(setenv "PATH" (concat (getenv "PATH") ":~/bin"))

;;
;; Hotkeys
;;

(global-set-key (kbd "C-c l")     'org-store-link)
(global-set-key (kbd "C-c a")     'org-agenda)
(global-set-key (kbd "C-c C-S-l") 'org-store-link)
(global-set-key (kbd "C-c C-S-c") 'org-capture)
(global-set-key (kbd "C-c C-S-a") 'org-agenda)
(global-set-key (kbd "C-c C-S-b") 'org-iswitchb)
(global-set-key (kbd "C-c m")     'minimap-toggle)
(global-set-key (kbd "C-c a")     'org-agenda)


;; Session hotkeys
(define-key ctl-x-map "S" 'save-current-configuration)
(define-key ctl-x-map "R" 'resume)
(define-key ctl-x-map "K" 'wipe)

(global-set-key (kbd "C-c C-r")    'find-alternate-file)
(global-set-key (kbd "C-c h")      'vline-mode)
(global-set-key (kbd "C-c t")      'toggle-truncate-lines)
(global-set-key (kbd "M-#")        'next-word)
(global-set-key (kbd "C-M-g")      'revert-buffer)
(global-set-key (kbd "C-x C-k")    'kill-all-dired-buffers)
(global-set-key (kbd "C-c n")      'display-line-numbers-mode)
(global-set-key (kbd "C-;")        'iedit-mode)
(global-set-key (kbd "M-+")        'text-scale-increase)
(global-set-key (kbd "M-_")        'text-scale-decrease)
(use-package move-text)
(global-set-key (kbd "M-S-<up>")   'move-text-up)
(global-set-key (kbd "M-S-<down>") 'move-text-down)
(global-set-key (kbd "M-^")        'server-force-delete)
(global-set-key (kbd "C-c s")      'sr-speedbar-toggle)
;; (global-set-key (kbd "C-c m")      'minimap-toggle)
(global-set-key (kbd "C-c M-m")    'menu-bar-mode)
(global-set-key (kbd "C-c b")      'flymake-compile) ;; build with flymake/Makefile
(global-set-key (kbd "C-M-y")      'secondary-dwim)
(global-set-key (kbd "C-x p")      'winstack-push)
(global-set-key (kbd "C-x M-p")    'winstack-pop)
(global-set-key (kbd "M-j")        'tabbar-backward)
(global-set-key (kbd "M-k")        'tabbar-forward)

;;
;; Functions
;;

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

(provide 'init-basic)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-basic.el ends here

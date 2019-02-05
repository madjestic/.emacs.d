;; init-circe.el --- Initialize circe configurations.  -*- lexical-binding: t -*-

;;; Commentary:
;;
;; Circe configuration.
;;

;;; Code:

;; (setq auth-sources '("~/.authinfo.gpg"))

;; (defun my-fetch-password (&rest params)
;;   (require 'auth-source)
;;   (let ((match (car (apply 'auth-source-search params))))
;;     (if match
;;         (let ((secret (plist-get match :secret)))
;;           (if (functionp secret)
;;               (funcall secret)
;;             secret))
;;       (error "Password not found for %S" params))))

;; (defun my-nickserv-password (server)
;;   (my-fetch-password :login "forcer" :machine "irc.freenode.net"))

;; (setq circe-network-options
;;       '(("Freenode"
;;          :nick "forcer"
;;          :channels ("#emacs" "#emacs-circe")
;;          :nickserv-password my-nickserv-password)))

;;('circe-mode1
(use-package circe
  :init
  (setq circe-network-options
	'(("Freenode"
	   :nick "madjestic"
   	   :nickserv-nick "madjestic"
           :nickserv-password "asdfg"
           :sasl-username "madjestic"
           :sasl-password "asdfg"
           :channels ("#emacs"
		      "#emacs-circe"
		      "#odforce"
                      "#haskell-beginners"
                      "#gentoo"
                      "#gentoo-haskell")
           :nickserv-password "asdfg"))))

(custom-set-variables
 '(browse-url-browser-function (quote browse-url-generic))
 '(browse-url-generic-program "chromium-browser" t)
 '(circe-default-directory "~/.circe")
 '(circe-format-self-say "me > {body}"))

(defun circe-command-KICK (nick &optional reason)
  "Kick WHO from the current channel with optional REASON."
  (interactive "sKick who: \nsWhy: ")
  (if (not (eq major-mode 'circe-channel-mode))
      (circe-display-server-message "Not in a channel buffer.")
    (when (not reason)
      (if (string-match "^\\([^ ]*\\) +\\(.+\\)" nick)
          (setq reason (match-string 2 nick)
                nick (match-string 1 nick))
        (setq reason "-")))
    (irc-send-raw (circe-server-process)
                  (format "KICK %s %s :%s"
                          circe-chat-target nick reason))))


(provide 'init-circe)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-circe.el ends here


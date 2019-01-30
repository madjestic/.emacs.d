(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("312db9f4889bb86d178020b2ade918cc16cac8cf3af3d3331699dea2fc2fa682" "babd11a8a13c4df5d8b4e1b38b66be13fca2674a130bc51d51a6652d21ac8d6d" "742813bfe0010a242ecc4c1059b50128f30403a06a397a1ab907bbb9cf3a921f" "5c3610fc7cbb72aa1ae86860bafeb4f51a1d4ab8381366faec03696d40ddb50b" "c41298dc14d57cafb14f81fc632890a51c5f067ed9b3864feee6cdcaaeeffc6f" "ccaaca9297a9263b29873238783337053ec6d10260495c4191436afa9ba219db" "90877573634d8184bd915d6c902d7d96aa2696446e5c61d9f9a0d63913aa56a0" "d6a4eaf8bf1066516a9a83f2007b520eab6af1918a5da121d00a390201e21271" "c4f700c78ffba96ef03a252f17e06b9b07c2fdd731709dc28fd20d07549fc344" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(load-theme 'schrodinger)

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

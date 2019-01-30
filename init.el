(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("331782c0c493230d4f2edfc5f14b0a1ae00dddc76b5d20c1c82f94864750f307" "5a260aba3f5c2a4865c024b172e03533aa02ed3d686d546ff1dace97d04ad1f0" "c20712d2cf123568e7e80d1a7417fa6bf8f43600cff9c5a7de862842c11a2d4b" "8e110ab8b16a03b4140426a2af8833f4511e47d50fca3213fe6541a537beb485" "ca9cd44ca312101e88d22aabd00c51e3df2cf23f6d4940eade34218c9e0f2996" "e86e00b7d675dab09dcdbff7c4f65e095ce8b256624038ccdd6d58f7801ef40d" "66e444178726f887b52184530051a495f8d4678c3e90f296589a209f9c15fa92" "6e72cf7c46281106b9443925bcc0319f2e82fd2a290d9cf7dbb2f417d18ad545" "08aeca47ccb71b3fc992f376f3c67cf67bfd11423007202d91682859db8171b6" "312db9f4889bb86d178020b2ade918cc16cac8cf3af3d3331699dea2fc2fa682" "babd11a8a13c4df5d8b4e1b38b66be13fca2674a130bc51d51a6652d21ac8d6d" "742813bfe0010a242ecc4c1059b50128f30403a06a397a1ab907bbb9cf3a921f" "5c3610fc7cbb72aa1ae86860bafeb4f51a1d4ab8381366faec03696d40ddb50b" "c41298dc14d57cafb14f81fc632890a51c5f067ed9b3864feee6cdcaaeeffc6f" "ccaaca9297a9263b29873238783337053ec6d10260495c4191436afa9ba219db" "90877573634d8184bd915d6c902d7d96aa2696446e5c61d9f9a0d63913aa56a0" "d6a4eaf8bf1066516a9a83f2007b520eab6af1918a5da121d00a390201e21271" "c4f700c78ffba96ef03a252f17e06b9b07c2fdd731709dc28fd20d07549fc344" default))))
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

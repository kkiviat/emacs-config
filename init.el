(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))
(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

;; Load here to avoid issues with accidentally auto-loading the built-in version before this.
(straight-use-package '(org-contrib :type git
                                    :repo "https://git.sr.ht/~bzg/org-contrib"
                                    :local-repo "org-contrib"))

(straight-use-package '(org))

(org-babel-load-file "~/Dropbox/org/private.org")
(org-babel-load-file (expand-file-name "settings.org" user-emacs-directory))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values '((org-download-image-dir . "~/Dropbox/org/roam/images"))))

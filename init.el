(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
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
(org-babel-load-file "~/.emacs.d/settings.org")
;; (org-babel-load-file "~/.emacs.d/org.org")
;; (org-babel-load-file "~/.emacs.d/programming.org")

(deftheme clean
  "simple, clean light theme")

(setq org-fontify-whole-heading-line t)
(setq org-fontify-quote-and-verse-blocks t)
(setq org-bullets-bullet-list '("🞄"))
(let* ((header-tuple
        (cond ((x-family-fonts "Source Sans 3")    '(:family "Source Sans 3"))
              (nil (warn "Cannot find a Sans Serif Font.  Install Source Sans Pro."))))
       )
(custom-theme-set-faces
 'clean
 '(default ((t (:inherit nil :extend nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :width normal :foundry "ADBO" :family "Source Code Pro"))))
 '(fringe ((t (:background "white"))))
 '(org-hide ((t (:foreground "white"))))
 '(header-line ((t (:background "white"))))

 '(isearch ((t (:background "purple" :foreground "white"))))
 '(lazy-highlight ((t (:background "SkyBlue1"))))
 '(cursor ((t (:background "black"))))
 '(link ((t (:foreground "medium blue" :underline t :weight bold))))
 '(highlight ((t (:inherit link :foreground "dodger blue" :background "white"))))
 '(highlight-symbol-face ((t (:background "light blue"))))
 '(region ((t (:extend t :background "light yellow"))))

 '(magit-section-highlight ((t (:extend t :background "grey95" :foreground "black"))))
 '(magit-section-heading ((t (:extend t :foreground "dark blue" :weight bold))))

 '(minibuffer-prompt ((t (:foreground "blue"))))
 '(mode-line ((t (:background "white" :foreground "black" :underline t :overline t))))
 '(mode-line-buffer-id ((t (:weight bold))))
 '(mode-line-emphasis ((t (:weight bold))))

 '(org-agenda-date ((t (:foreground "black" :weight bold))))
 '(org-agenda-date-today ((t (:inherit org-agenda-date :foreground "black" :background "white" :underline t :weight bold))))
 '(org-agenda-date-weekend ((t (:inherit org-agenda-date :foreground "black" :slant italic :weight bold))))
 '(org-agenda-structure ((t (:foreground "steel blue" :weight bold :height 1.2))))
 '(org-agenda-current-time ((t (:foreground "blue" :weight bold))))
 '(org-agenda-done ((t (:foreground "sea green"))))
 '(org-scheduled ((t (:foreground "blue"))))
 '(org-scheduled-previously ((t (:foreground "dark red"))))
 '(org-upcoming-deadline ((t (:foreground "maroon"))))
 '(org-time-grid ((t (:foreground "black"))))

 '(org-todo ((t (:foreground "red" :weight bold))))
 '(org-done ((t (:foreground "sea green" :weight bold))))

 '(org-block ((t (:extend t :background "gray85" :foreground "#000000"))))
 '(org-block-begin-line ((t (:inherit org-block :extend t :background "black" :foreground "white"))))
 '(org-block-end-line ((t (:inherit org-block-begin-line :extend t :background "black" :foreground "white"))))

 '(org-drawer ((t (:foreground "gray55"))))
 '(org-special-keyword ((t (:foreground "MediumOrchid4"))))
 '(org-tag ((t (:foreground "gray65"))))
 '(org-meta-line ((t (:foreground "gray35")))) ;; properties at top of document
 `(org-document-title ((t (:height 1.0  :weight bold ,@header-tuple :foreground "dark blue"))))
 '(org-ellipsis ((t (:foreground "black"))))

 `(org-level-1 ((t (:inherit outline-1 :foreground "black" :weight bold ,@header-tuple :height 1.0))))
 `(org-level-2 ((t (:inherit outline-2 :foreground "black" :weight bold ,@header-tuple :height 1.0))))
 `(org-level-3 ((t (:inherit outline-3 :foreground "black" :weight bold ,@header-tuple :height 1.0))))
 `(org-level-4 ((t (:inherit outline-4 :foreground "black" :weight bold ,@header-tuple :height 1.0))))
 `(org-level-5 ((t (:inherit outline-5 :foreground "black" :weight bold ,@header-tuple :height 1.0))))
 `(org-level-6 ((t (:inherit outline-6 :foreground "black" :weight bold ,@header-tuple :height 1.0))))
 `(org-level-7 ((t (:inherit outline-7 :foreground "black" :weight bold ,@header-tuple :height 1.0))))
 `(org-level-8 ((t (:inherit outline-8 :foreground "black" :weight bold ,@header-tuple :height 1.0))))

 '(org-link ((t (:inherit link))))
 '(org-property-value ((t (:foreground "steel blue"))))
 '(org-quote ((t (:inherit org-block :background "gray95" :slant italic))))
 '(org-table ((t (:background "gray85"))))

 '(helm-match ((t (:foreground "blue"))))
 )
)
(custom-set-variables
 '(org-src-block-faces
   '(("sh"
      (:extend t :background "gray90"))
     ("jupyter-python"
      (:extend t :background "light yellow"))
     ("python"
      (:extend t :background "light yellow")))))

(provide-theme 'clean)

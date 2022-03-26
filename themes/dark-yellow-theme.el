(deftheme dark-yellow
  "")

(setq org-fontify-whole-heading-line t)
(setq org-fontify-quote-and-verse-blocks t)
(setq org-bullets-bullet-list '("\u200b"))
(let* ((variable-tuple1
        (cond ((x-family-fonts "KG Happy")    '(:family "KG Happy"))
	      ((x-family-fonts "Source Sans Pro")    '(:family "Source Sans Pro"))
              (nil (warn "Cannot find a Sans Serif Font.  Install Source Sans Pro."))))
       (variable-tuple2
        (cond ((x-family-fonts "Quicksand")    '(:family "Quicksand"))
	      ((x-family-fonts "Source Sans Pro")    '(:family "Source Sans Pro"))
              (nil (warn "Cannot find a Sans Serif Font.  Install Source Sans Pro."))))
       (variable-tuple3
        (cond ((x-family-fonts "boldfont")    '(:family "boldfont"))
	      ((x-family-fonts "Source Sans Pro")    '(:family "Source Sans Pro"))
              (nil (warn "Cannot find a Sans Serif Font.  Install Source Sans Pro."))))
       (variable-tuple-title
        (cond ((x-family-fonts "KG Part of Me")    '(:family "KG Part of Me"))
	      ((x-family-fonts "Source Sans Pro")    '(:family "Source Sans Pro"))
              (nil (warn "Cannot find a Sans Serif Font.  Install Source Sans Pro."))))
       )
(custom-theme-set-faces
 'dark-yellow
 '(default ((t (:inherit nil :extend nil :stipple nil :background "black" :foreground "yellow" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "ADBO" :family "Source Code Pro"))))
 '(fringe ((t (:background "black"))))
 '(org-hide ((t (:foreground "black"))))
 '(header-line ((t (:background "black"))))
 '(highlight ((t (:inherit link :background "light goldenrod"))))
 '(isearch ((t (:background "deep pink" :foreground "black"))))
 '(lazy-highlight ((t (:background "grey35"))))
 '(cursor ((t (:background "hot pink"))))
 '(minibuffer-prompt ((t (:foreground "deep pink"))))
 '(link ((t (:foreground "deep pink" :underline t :weight bold))))
 '(mode-line ((t (:background "deep pink" :foreground "yellow"))))
 '(highlight-symbol-face ((t (:background "grey35"))))

 '(org-agenda-date ((t (:foreground "gold" :weight bold))))
 '(org-agenda-date-today ((t (:inherit org-agenda-date :foreground "deep pink" :slant italic :weight bold))))
 '(org-agenda-date-weekend ((t (:inherit org-agenda-date :foreground "gold" :slant italic :weight bold))))
 '(org-agenda-structure ((t (:foreground "light goldenrod" :weight bold :height 1.2))))
 '(org-agenda-done ((t (:foreground "sea green"))))
 '(org-scheduled ((t (:foreground "DeepSkyBlue3"))))
 '(org-scheduled-previously ((t (:foreground "maroon"))))
 '(org-upcoming-deadline ((t (:foreground "blue violet"))))
 '(org-time-grid ((t (:foreground "light goldenrod"))))

 '(org-todo ((t (:foreground "DeepPink3" :weight bold))))
 '(org-done ((t (:foreground "sea green" :weight bold))))

 '(org-block ((t (:extend t :background "grey15" :foreground "gold"))))
 '(org-block-begin-line ((t (:inherit org-block :extend t :background "gold" :foreground "black"))))
 '(org-block-end-line ((t (:inherit org-block-begin-line :extend t :background "gold" :foreground "black"))))

 '(org-drawer ((t (:foreground "DarkOrchid4"))))
 '(org-special-keyword ((t (:foreground "deep pink"))))
 '(org-property-value ((t (:foreground "goldenrod"))))
 '(org-tag ((t (:foreground "light goldenrod" :height 0.5))))

 `(org-document-title ((t (:height 1.8 :foreground "DodgerBlue2" ,@variable-tuple-title))))
 '(org-ellipsis ((t (:foreground "yellow"))))

 `(org-level-1 ((t (:extend t :foreground "deep pink" :weight semilight :height 2.0 ,@variable-tuple1))))
 `(org-level-2 ((t (:extend t :foreground "SpringGreen3" :height 2.0 ,@variable-tuple2))))
 `(org-level-3 ((t (:inherit outline-3 :extend t :foreground "blue violet" :weight bold :height 1.8 ,@variable-tuple2))))
 `(org-level-4 ((t (:inherit outline-4 :extend t :foreground "SeaGreen3" :height 1.5 ,@variable-tuple2))))
 `(org-level-5 ((t (:slant italic :weight bold :foreground "deep pink" :height 1.5 ,@variable-tuple2))))
 `(org-level-6 ((t (:slant italic :weight normal :foreground "SpringGreen3" :height 1.5 ,@variable-tuple2))))
 `(org-level-7 ((t (:slant italic :weight normal :foreground "blue violet" :height 1.5 ,@variable-tuple2))))
 `(org-level-8 ((t (:slant italic :weight normal :foreground "SeaGreen3" :height 1.5 ,@variable-tuple2))))

 '(org-link ((t (:inherit link))))
 '(org-meta-line ((t (:foreground "dark sea green")))) ;; properties at top of document
 '(org-quote ((t (:inherit org-block :slant italic))))
 '(org-table ((t (:background "grey35"))))
 '(mode-line-buffer-id ((t (:weight bold))))
 '(mode-line-emphasis ((t (:weight bold))))
 '(region ((t (:extend t :background "grey25"))))
 )
)
(custom-set-variables
 '(org-src-block-faces
   '(("sh"
      (:extend t :background "grey12"))
     ("jupyter-python"
      (:extend t :background "grey10"))
     ("python"
      (:extend t :background "grey10")))))

(provide-theme 'dark-yellow)

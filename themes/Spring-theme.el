(deftheme Spring
  "Created 2022-03-19.")

(setq org-fontify-whole-heading-line t)
(setq org-fontify-quote-and-verse-blocks t)
;; (setq org-bullets-bullet-list '("\u200b" "✿" "◆" "▶" "✸" "✿" "◆" "▶" "✸"))
(setq org-bullets-bullet-list '("\u200b"))
(let* ((variable-tuple1
        (cond ((x-family-fonts "KG Happy")    '(:family "KG Happy"))
	      ((x-family-fonts "Source Sans 3")    '(:family "Source Sans 3"))
              (nil (warn "Cannot find a Sans Serif Font.  Install Source Sans Pro."))))
       (variable-tuple2
        (cond ((x-family-fonts "Covered By Your Grace")    '(:family "Covered By Your Grace"))
	      ((x-family-fonts "Source Sans 3")    '(:family "Source Sans 3"))
              (nil (warn "Cannot find a Sans Serif Font.  Install Source Sans Pro."))))
       (variable-tuple3
        (cond ((x-family-fonts "boldfont")    '(:family "boldfont"))
	      ((x-family-fonts "Source Sans 3")    '(:family "Source Sans 3"))
              (nil (warn "Cannot find a Sans Serif Font.  Install Source Sans Pro."))))
       (variable-tuple-title
        (cond ((x-family-fonts "KG Part of Me")    '(:family "KG Part of Me"))
	      ((x-family-fonts "Source Sans 3")    '(:family "Source Sans 3"))
              (nil (warn "Cannot find a Sans Serif Font.  Install Source Sans Pro."))))
       )
(custom-theme-set-faces
 'Spring
 '(default ((t (:inherit nil :extend nil :stipple nil :background "light goldenrod" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :width normal :foundry "ADBO" :family "Source Code Pro"))))
 '(fringe ((t (:background "light goldenrod"))))
 '(org-hide ((t (:foreground "light goldenrod"))))
 '(header-line ((t (:background "light goldenrod"))))
 '(highlight ((t (:inherit link :background "thistle"))))
 '(isearch ((t (:background "deep pink" :foreground "light goldenrod"))))
 '(lazy-highlight ((t (:background "hot pink"))))
 '(cursor ((t (:background "hot pink"))))
 '(minibuffer-prompt ((t (:foreground "deep pink"))))
 '(link ((t (:foreground "deep pink" :underline t :weight bold))))
 '(mode-line ((t (:background "deep pink" :foreground "pale green"))))
 '(highlight-symbol-face ((t (:background "thistle"))))

 '(org-agenda-date ((t (:foreground "DarkOrchid2" :weight bold))))
 '(org-agenda-date-today ((t (:inherit org-agenda-date :foreground "DarkOrchid4" :background "plum" :slant italic :weight bold))))
 '(org-agenda-date-weekend ((t (:inherit org-agenda-date :foreground "DarkOrchid1" :slant italic :weight bold))))
 '(org-agenda-structure ((t (:foreground "DarkOrchid4" :weight bold :height 1.2))))
 '(org-agenda-done ((t (:foreground "sea green"))))
 '(org-scheduled ((t (:foreground "DeepSkyBlue3"))))
 '(org-scheduled-previously ((t (:foreground "maroon"))))
 '(org-upcoming-deadline ((t (:foreground "blue violet"))))
 '(org-time-grid ((t (:foreground "blue violet"))))

 '(org-todo ((t (:foreground "DeepPink3" :weight bold))))
 '(org-done ((t (:foreground "sea green" :weight bold))))

 '(org-block ((t (:extend t :background "honeydew1" :foreground "#000000"))))
 '(org-block-begin-line ((t (:inherit org-block :extend t :background "DarkOrchid4" :foreground "#bab5a1"))))
 '(org-block-end-line ((t (:inherit org-block-begin-line :extend t))))

 '(org-drawer ((t (:foreground "DarkOrchid4"))))
 '(org-special-keyword ((t (:foreground "deep pink"))))
 '(org-tag ((t (:foreground "plum"))))

 `(org-document-title ((t (:height 1.8 :foreground "VioletRed1" ,@variable-tuple-title))))
 '(org-ellipsis ((t (:foreground "#454138"))))

 '(org-ref-cite-face ((t (:foreground "medium aquamarine" :weight bold :underline t))))

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
 '(org-quote ((t (:inherit org-block :background "#dcd8c0" :slant italic))))
 '(org-table ((t (:background "thistle"))))
 '(org-table-header ((t (:inherit org-table :background "#454138" :foreground "#bab5a1"))))
 '(mode-line-buffer-id ((t (:weight bold))))
 '(mode-line-emphasis ((t (:weight bold))))
 '(region ((t (:extend t :background "light pink"))))

 '(helm-match ((t (:foreground "deep pink"))))
 )
)

(provide-theme 'Spring)

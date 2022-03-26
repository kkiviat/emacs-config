(deftheme nier
  "Inspired by https://metakirby5.github.io/yorha/")

(setq org-fontify-whole-heading-line t)
(setq org-fontify-quote-and-verse-blocks t)
(setq org-bullets-bullet-list '("|" "\u200b" "|" "|" "|" "|" "|" "|")) ;; vertical bar
(custom-theme-set-faces
 'nier
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#d1cdb7" :foreground "#333333" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :width normal :foundry "ADBO" :family "Source Code Pro"))))
 '(fringe ((t (:background "#d1cdb7"))))
 '(org-hide ((t (:foreground "#d1cdb7"))))
 '(header-line ((t (:background "#d1cdb7"))))
 '(highlight ((t (:background "#454138" :foreground "#d1cdb7"))))
 '(isearch ((t (:background "#454138" :foreground "#d1cdb7"))))
 '(lazy-highlight ((t (:background "#bab5a1"))))
 '(link ((t (:foreground "#454138" :underline t :weight bold))))
 '(mode-line ((t (:background "#454138" :foreground "#bab5a1"))))
 '(org-agenda-date-today ((t (:inherit org-agenda-date :foreground "#454138" :slant italic :weight bold))))
 '(org-agenda-date-weekend ((t (:inherit org-agenda-date :foreground "#454138" :slant italic :weight bold))))
 '(org-agenda-structure ((t (:foreground "#454138" :weight bold :height 1.2))))
 '(org-block ((t (:extend t :background "#dcd8c0" :foreground "#000000"))))
 '(org-block-begin-line ((t (:inherit org-block :extend t :background "#454138" :foreground "#bab5a1"))))
 '(org-block-end-line ((t (:inherit org-block-begin-line :extend t :background "#dcd8c0" :foreground "#454138"))))
 '(org-drawer ((t (:foreground "#454138"))))
 '(org-document-title ((t (:height 1.8 :foreground "#454138"))))
 '(org-ellipsis ((t (:foreground "#454138"))))
 '(org-level-1 ((t (:inherit outline-1 :extend t :foreground "#454138" :weight semilight :height 1.6))))
 '(org-level-2 ((t (:inherit outline-2 :extend t :foreground "#454138" :weight semilight :overline t :underline t :height 1.4))))
 '(org-level-3 ((t (:inherit outline-3 :extend t :foreground "#454138" :weight bold :height 1.2))))
 '(org-level-4 ((t (:inherit outline-4 :extend t :foreground "#454138" :height 1.1))))
 '(org-level-5 ((t (:slant italic :weight bold :height 1.0))))
 '(org-level-6 ((t (:slant italic :weight normal :height 1.0))))
 '(org-level-7 ((t (:slant italic :weight normal :height 1.0))))
 '(org-level-8 ((t (:slant italic :weight normal :height 1.0))))
 '(org-link ((t (:inherit link :foreground "#454138" :underline t :weight bold))))
 '(org-meta-line ((t (:foreground "#454138" :slant normal))))
 '(org-quote ((t (:inherit org-block :background "#dcd8c0" :slant italic))))
 '(org-table ((t (:background "#dcd8c0"))))
 '(org-table-header ((t (:inherit org-table :background "#454138" :foreground "#bab5a1"))))
 '(region ((t (:extend t :background "#bab5a1"))))
 )
(custom-set-variables
 '(org-src-block-faces
   '(("sh"
      (:inherit org-block))
     ("jupyter-python"
      (:inherit org-block))
     ("python"
      (:inherit org-block)))))

(provide-theme 'nier)

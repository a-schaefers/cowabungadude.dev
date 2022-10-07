;; https://orgmode.org/worg/org-tutorials/org-publish-html-tutorial.html
(setq org-publish-project-alist
      '(("org-notes"
         :base-directory "~/repos/cowabungadude.dev/org"
         :publishing-directory "~/repos/cowabungadude.dev"
         :publishing-function org-html-publish-to-html
         :with-sub-superscript nil

         :recursive t
         :headline-levels 4             ; Just the default for this project.
         :auto-preamble t
         )))

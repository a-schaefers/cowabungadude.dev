(require 'ox-publish)

;; https://orgmode.org/worg/org-tutorials/org-publish-html-tutorial.html
(setq org-publish-project-alist
      '(
        ("org-static"
         :base-directory "~/repos/cowabungadude.dev/org"
         :publishing-directory "~/repos/cowabungadude.dev"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
         :recursive t
         :publishing-function org-publish-attachment
         )
        ("org-notes"
         :base-directory "~/repos/cowabungadude.dev/org"
         :publishing-directory "~/repos/cowabungadude.dev"
         :publishing-function org-html-publish-to-html
         :with-sub-superscript nil
         :recursive t
         :headline-levels 4             ; Just the default for this project.
         :auto-preamble t
         )))

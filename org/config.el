;; https://orgmode.org/worg/org-tutorials/org-publish-html-tutorial.html
(require 'ox-publish)
(add-to-list 'spartan-package-list 'ox-twbs)
(require 'ox-twbs)

(setq org-publish-project-alist
      '(
        ("org-static"
         :base-directory "~/repos/cowabungadude.dev/org"
         :publishing-directory "~/repos/cowabungadude.dev"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3"
         :recursive t
         :publishing-function org-publish-attachment
         )
        ("org-notes"
         :base-directory "~/repos/cowabungadude.dev/org"
         :publishing-directory "~/repos/cowabungadude.dev"
         :publishing-function org-twbs-publish-to-html
         :recursive t
         :with-author t
         ))
      org-html-validation-link nil
      org-export-with-timestamps nil
      org-export-with-email nil)

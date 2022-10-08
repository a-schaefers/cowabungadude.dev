;; https://orgmode.org/worg/org-tutorials/org-publish-html-tutorial.html
(require 'ox-publish)

(add-to-list 'spartan-package-list 'ox-twbs)

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
         ;; :publishing-function org-html-publish-to-html
         :publishing-function org-twbs-publish-to-html
         :with-sub-superscript nil
         :recursive t
         :headline-levels 4
         :auto-preamble t
         :auto-postamble t
         :with-author t
         :with-creator t
         ))
      org-html-validation-link nil
      org-export-with-email t)

;; ;; https://systemcrafters.net/publishing-websites-with-org-mode/building-the-site/
;; ;; Customize the HTML output
;; (setq org-html-validation-link nil            ;; Don't show validation link
;;       ;; org-html-head-include-scripts nil       ;; Use our own scripts
;;       ;; org-html-head-include-default-style nil ;; Use our own styles
;;       ;; org-html-head "<link rel=\"stylesheet\" href=\"https://cdn.simplecss.org/simple.min.css\" />"
;;       )
;; (setq )

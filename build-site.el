;; Require org publishing system
(require 'ox-publish)
(require 'package)
(setq package-user-dir (expand-file-name "./.packages"))
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))
;; Define the publishing project
(setq org-publish-project-alist
      (list
       (list "mbxl.github.io"
             :recursive t
             :base-directory "./content"
             :publishing-directory "./docs"
	     :publishing-function 'org-html-publish-to-html
	     :with-author nil
	     :with-creator nil
	     :with-toc nil
	     :section-numbers nil
	     :time-stamp-file nil)))

(setq org-html-validation-link nil
      org-html-head-include-scripts nil
      org-html-head-include-default-style nil
      org-html-head "<link rel=\"stylesheet\" href=\"style.css\" />")

(org-babel-tangle-file "style-script.org")

;; Generate the site output
(org-publish-all t)

;; Success message
(message "Build complete!")


;; Require org publishing system
(require 'ox-publish)

;; Define the publishing project
(setq org-publish-project-alist
      (list
       (list "matthewblais.github.io"
             :recursive t
             :base-directory "./content"
             :publishing-directory "./pub"
	     :publishing-function 'org-html-publish-to-html)))

;; Generate the site output
(org-publish-all t)

;; Success message
(message "Build complete!")

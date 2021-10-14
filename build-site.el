;; Require org publishing system
(require 'ox-publish)

;; Tangle code blocks in org file
(org-babel-tangle-file "site.org")

;; Success message
(message "Build complete!")


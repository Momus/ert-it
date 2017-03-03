;;; package --- Summary
;; Find and run all your tests.

;;; Commentary:
;; Best used while the tune to Michael Jackson's \"Beat
;; It!\" runs through your head.

;;; Code:
(defun ert-it ()
  "Look for a test file recursively in the working directory.
Then evaluate and feed it into \\[ert].

With \\[universal-argument] it will grab all files of the
type \"*-test.el\" recursively in the working directory."
  (interactive))

(provide 'ert-it)
;;; ert-it ends here

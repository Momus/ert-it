;;; ert-it --- Find and run all your tests.

;;; Commentary:
;; Best used while the tune to Michael Jackson's \"Beat
;; It!\" runs through your head.

;;; Code:
(defun ert-file ()
  "Take name of the current buffer, make it into a test file."
  (concat
   (file-name-sans-extension (expand-file-name (buffer-name)))
   "-test.el"))


(defun ert-it ()
  "Look for a test file in the working directory.
Then evaluate and feed it into \\[ert]."

  (interactive)
  (save-buffer)
  (ert-delete-all-tests)
  (load (ert-file))
  (ert-run-tests-interactively t))


(provide 'ert-it)
;;; ert-it ends here

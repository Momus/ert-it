- [README](#orgbc8fa1c)
  - [Intro](#org3e65c14)
  - [About this Project](#org0f2a13d)
- [The Plan](#org2897cd0)
  - [<code>[100%]</code> Bare minimum to be useful](#org807c9ae)
  - [<code>[0%]</code> Next Steps](#org267541e)
- [ert-it](#org2d63ab3)
- [tests](#orge693901)



<a id="orgbc8fa1c"></a>

# README




<a id="org3e65c14"></a>

## Intro

A wrapper for ert to easily run tests.


<a id="org0f2a13d"></a>

## About this Project

Uses Babel Org, everything, including the \`README.md\` file, is generated form a single file, \`ert-it.org,\` where all the changes should go.


<a id="org2897cd0"></a>

# The Plan


<a id="org807c9ae"></a>

## <code>[100%]</code> Bare minimum to be useful

-   [X] In a .el file:
    -   [X] find a corresponding buffer named \*-test.el
    -   [X] evaluate it. The whole thing
    -   [X] feed it to ert


<a id="org267541e"></a>

## <code>[0%]</code> Next Steps

-   [ ] search subdirectories
-   [ ] get all \*-test.el files
-   [ ] look for any tests in the current buffer. Evaluate those functons.


<a id="org2d63ab3"></a>

# ert-it

```emacs-lisp
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
```


<a id="orge693901"></a>

# tests

```emacs-lisp
;;; ert-it-test.el --- Tests for ert-it

;;; Commentary:

;;; Code:
(load-file "ert-it.el")

(provide 'ert-it-test)
;;; ert-it-test ends here
```

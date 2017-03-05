<div id="table-of-contents">
<h2>Table of Contents</h2>
<div id="text-table-of-contents">
<ul>
<li><a href="#org61a586b">1. README</a>
<ul>
<li><a href="#org2bbeba2">1.1. Intro</a></li>
<li><a href="#org9f85ce8">1.2. About this Project</a></li>
</ul>
</li>
<li><a href="#orgfcb578c">2. <span class="todo TODO">TODO</span> The Plan</a>
<ul>
<li><a href="#org040bea8">2.1. <code>[0%]</code> Bare minimum to be useful</a></li>
</ul>
</li>
<li><a href="#org8c08011">3. ert-it</a></li>
<li><a href="#orgab6c919">4. tests</a></li>
</ul>
</div>
</div>


<a id="org61a586b"></a>

# README

 


<a id="org2bbeba2"></a>

## Intro

Please see the documentation in ert-it.el for now


<a id="org9f85ce8"></a>

## About this Project

Uses Babel Org, everything is in one file: <ert-it.md>, where
all the changes should go.


<a id="orgfcb578c"></a>

# The Plan


<a id="org040bea8"></a>

## <code>[0%]</code> Bare minimum to be useful

-   [-] In a .el file:
    -   [X] find a corresponding buffer named \*-test.el
    -   [X] evaluate it. The whole thing
    -   [ ] feed it to ert


<a id="org8c08011"></a>

# ert-it

This functon should:

1.  look for any tests in the current buffer. Evaluate those functons.
2.  look recuresivelly for a -test.el file matching current buffer name,

    ;;; package --- Summary
    ;; Find and run all your tests.
    
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
      "Look for a test file recursively in the working directory.
    Then evaluate and feed it into \\[ert].
    
        \\[TODO] With \\[universal-argument] it will grab all files of the
        type \"*-test.el\" recursively in the working directory."
      (interactive)
      (load (ert-file))
      (ert-run-tests-interactively t))
    
    
    (provide 'ert-it)
    ;;; ert-it ends here


<a id="orgab6c919"></a>

# tests

    ;;; ert-it-test.el --- Tests for ert-it
    
    ;;; Commentary:
    
    ;;; Code:
    (load-file "ert-it.el")
    
    (provide 'ert-it-test)
    ;;; ert-it-test ends here


<div id="table-of-contents">
<h2>Table of Contents</h2>
<div id="text-table-of-contents">
<ul>
<li><a href="#org0d65268">1. README</a>
<ul>
<li><a href="#org254261c">1.1. Intro</a></li>
<li><a href="#org686dae7">1.2. About this Project</a></li>
</ul>
</li>
<li><a href="#orgf5f3472">2. <span class="todo TODO">TODO</span> The Plan</a>
<ul>
<li><a href="#org8e692f0">2.1. <code>[100%]</code> Bare minimum to be useful</a></li>
</ul>
</li>
<li><a href="#orge0bc43f">3. ert-it</a></li>
<li><a href="#org2ad9f4f">4. tests</a></li>
</ul>
</div>
</div>


<a id="org0d65268"></a>

# README

 


<a id="org254261c"></a>

## Intro

A wrapper for ert to easily run tests.


<a id="org686dae7"></a>

## About this Project

Uses Babel Org, everything, including the \`README.md\` file, is
generated form a single file, \`ert-it.org,\` where all the changes should go.


<a id="orgf5f3472"></a>

# The Plan


<a id="org8e692f0"></a>

## <code>[100%]</code> Bare minimum to be useful

-   [X] In a .el file:
    -   [X] find a corresponding buffer named \*-test.el
    -   [X] evaluate it. The whole thing
    -   [X] feed it to ert


<a id="orge0bc43f"></a>

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


<a id="org2ad9f4f"></a>

# tests

    ;;; ert-it-test.el --- Tests for ert-it
    
    ;;; Commentary:
    
    ;;; Code:
    (load-file "ert-it.el")
    
    (provide 'ert-it-test)
    ;;; ert-it-test ends here


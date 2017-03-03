<div id="table-of-contents">
<h2>Table of Contents</h2>
<div id="text-table-of-contents">
<ul>
<li><a href="#orgc98fee4">1. README</a>
<ul>
<li><a href="#org852101f">1.1. Intro</a></li>
<li><a href="#org82e7611">1.2. About this Project</a></li>
</ul>
</li>
<li><a href="#orga81b2fc">2. ert-it</a></li>
<li><a href="#org736df1c">3. tests</a></li>
</ul>
</div>
</div>


<a id="orgc98fee4"></a>

# README

 


<a id="org852101f"></a>

## Intro

Please see the documentation in ert-it.el for now


<a id="org82e7611"></a>

## About this Project

Uses Babel Org, everything is in one file: <ert-it.md>, where
all the changes should go.


<a id="orga81b2fc"></a>

# ert-it

    ls -d $(pwd)

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


<a id="org736df1c"></a>

# tests

    ;;; ert-it-test.el --- Tests for ert-it
    
    ;;; Commentary:
    
    ;;; Code:
    (load-file "ert-it.el")
    
    (provide 'ert-it-test)
    ;;; ert-it-test ends here


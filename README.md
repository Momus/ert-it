<div id="table-of-contents">
<h2>Table of Contents</h2>
<div id="text-table-of-contents">
<ul>
<li><a href="#org75273f9">1. README</a>
<ul>
<li><a href="#org3352538">1.1. Intro</a></li>
<li><a href="#org010eab9">1.2. About this Project</a></li>
</ul>
</li>
<li><a href="#orgb7888a1">2. <span class="todo TODO">TODO</span> The Plan</a>
<ul>
<li><a href="#orgce132c6">2.1. <code>[100%]</code> Bare minimum to be useful</a></li>
<li><a href="#orgd69b4c0">2.2. <code>[0%]</code> Next Steps</a></li>
</ul>
</li>
<li><a href="#org3e85148">3. ert-it</a></li>
<li><a href="#orgcc47aa7">4. tests</a></li>
</ul>
</div>
</div>


<a id="org75273f9"></a>

# README

 


<a id="org3352538"></a>

## Intro

A wrapper for ert to easily run tests.


<a id="org010eab9"></a>

## About this Project

Uses Babel Org, everything, including the \`README.md\` file, is
generated form a single file, \`ert-it.org,\` where all the changes should go.


<a id="orgb7888a1"></a>

# The Plan


<a id="orgce132c6"></a>

## <code>[100%]</code> Bare minimum to be useful

-   [X] In a .el file:
    -   [X] find a corresponding buffer named \*-test.el
    -   [X] evaluate it. The whole thing
    -   [X] feed it to ert


<a id="orgd69b4c0"></a>

## <code>[0%]</code> Next Steps

-   [ ] search subdirectories
-   [ ] get all \*-test.el files


<a id="org3e85148"></a>

# ert-it

This functon should:

1.  look for any tests in the current buffer. Evaluate those functons.
2.  look recuresivelly for a -test.el file matching current buffer name,

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


<a id="orgcc47aa7"></a>

# tests

    ;;; ert-it-test.el --- Tests for ert-it
    
    ;;; Commentary:
    
    ;;; Code:
    (load-file "ert-it.el")
    
    (provide 'ert-it-test)
    ;;; ert-it-test ends here


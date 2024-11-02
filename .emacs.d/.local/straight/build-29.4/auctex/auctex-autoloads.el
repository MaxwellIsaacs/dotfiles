;;; auctex-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:



;;; Generated autoloads from bib-cite.el

(autoload 'bib-cite-minor-mode "bib-cite" "\
Toggle bib-cite mode.
When bib-cite mode is enabled, citations, labels and refs are highlighted
when the mouse is over them.  Clicking on these highlights with [mouse-2]
runs `bib-find', and [mouse-3] runs `bib-display'.

(fn ARG)" t)
(autoload 'turn-on-bib-cite "bib-cite" "\
Unconditionally turn on Bib Cite mode.")


;;; Generated autoloads from context.el

(defalias 'context-mode #'ConTeXt-mode)
(autoload 'ConTeXt-mode "context" "\
Major mode in AUCTeX for editing ConTeXt files.

Entering `ConTeXt-mode' calls the value of `text-mode-hook',
then the value of `TeX-mode-hook', and then the value
of `ConTeXt-mode-hook'.

(fn)" t)


;;; Generated autoloads from font-latex.el

(autoload 'font-latex-setup "font-latex" "\
Setup this buffer for LaTeX font-lock.  Usually called from a hook.")


;;; Generated autoloads from latex.el

(autoload 'BibTeX-auto-store "latex" "\
This function should be called from `bibtex-mode-hook'.
It will setup BibTeX to store keys in an auto file.")
(add-to-list 'auto-mode-alist '("\\.drv\\'" . LaTeX-mode) t)
(add-to-list 'auto-mode-alist '("\\.hva\\'" . LaTeX-mode))
 (if (eq (symbol-function 'LaTeX-mode) 'latex-mode)
    (defalias 'LaTeX-mode nil))
(autoload 'LaTeX-mode "latex" "\
Major mode in AUCTeX for editing LaTeX files.
See info under AUCTeX for full documentation.

Entering LaTeX mode calls the value of `text-mode-hook',
then the value of `TeX-mode-hook', and then the value
of `LaTeX-mode-hook'.

(fn)" t)
(put 'LaTeX-mode 'auctex-function-definition (symbol-function 'LaTeX-mode))
(autoload 'docTeX-mode "latex" "\
Major mode in AUCTeX for editing .dtx files derived from `LaTeX-mode'.
Runs `LaTeX-mode', sets a few variables and
runs the hooks in `docTeX-mode-hook'.

(fn)" t)


;;; Generated autoloads from multi-prompt.el

(autoload 'multi-prompt "multi-prompt" "\
Completing prompt for a list of strings.
The first argument SEPARATOR should be the string (of length 1) to
separate the elements in the list.  The second argument UNIQUE should
be non-nil, if each element must be unique.  The remaining elements
are the arguments to `completing-read'.  See that.

(fn SEPARATOR UNIQUE PROMPT TABLE &optional MP-PREDICATE REQUIRE-MATCH INITIAL HISTORY)")
(autoload 'multi-prompt-key-value "multi-prompt" "\
Read multiple strings, with completion and key=value support.
PROMPT is a string to prompt with, usually ending with a colon
and a space.

TABLE is an alist where each entry is a list.  The first element
of each list is a string representing a key and the optional
second element is a list with strings to be used as values for
the key.  The second element can also be a variable returning a
list of strings.

See the documentation for `completing-read' for details on the
other arguments: PREDICATE, REQUIRE-MATCH, INITIAL-INPUT, HIST,
DEF, and INHERIT-INPUT-METHOD.

The return value is the string as entered in the minibuffer.

(fn PROMPT TABLE &optional PREDICATE REQUIRE-MATCH INITIAL-INPUT HIST DEF INHERIT-INPUT-METHOD)")


;;; Generated autoloads from plain-tex.el

 (if (eq (symbol-function 'plain-TeX-mode) 'plain-tex-mode)
    (defalias 'plain-TeX-mode nil))
(autoload 'plain-TeX-mode "plain-tex" "\
Major mode in AUCTeX for editing plain TeX files.
See info under AUCTeX for documentation.

Entering `plain-TeX-mode' calls the value of `text-mode-hook',
then the value of `TeX-mode-hook', and then the value
of `plain-TeX-mode-hook'.

(fn)" t)
(put 'plain-TeX-mode 'auctex-function-definition (symbol-function 'plain-TeX-mode))
(autoload 'AmSTeX-mode "plain-tex" "\
Major mode in AUCTeX for editing AmSTeX files.
See info under AUCTeX for documentation.

Entering `AmSTeX-mode' calls the value of `text-mode-hook', then
the value of `TeX-mode-hook', `plain-TeX-mode-hook' and then the
value of `AmSTeX-mode-hook'.

(fn)" t)
(defalias 'ams-tex-mode #'AmSTeX-mode)


;;; Generated autoloads from preview.el

(put 'preview-scale-function 'safe-local-variable (lambda (x) (and (numberp x) (<= 0.1 x 10))))
(autoload 'desktop-buffer-preview "preview" "\
Hook function for restoring persistent previews into a buffer.

(fn FILE-NAME BUFFER-NAME MISC)")
(add-to-list 'desktop-buffer-mode-handlers '(LaTeX-mode . desktop-buffer-preview))
(autoload 'preview-install-styles "preview" "\
Install the TeX style files into a permanent location DIR.
This must be in the TeX search path.  If FORCE-OVERWRITE is greater
than 1, files will get overwritten without query, if it is less
than 1 or nil, the operation will fail.  The default of 1 for interactive
use will query.

Similarly FORCE-SAVE can be used for saving
`preview-TeX-style-dir' to record the fact that the uninstalled
files are no longer needed in the search path.

(fn DIR &optional FORCE-OVERWRITE FORCE-SAVE)" t)
(autoload 'LaTeX-preview-setup "preview" "\
Hook function for embedding the preview package into AUCTeX.
This is called by `LaTeX-mode-hook' and changes AUCTeX variables
to add the preview functionality.")
(autoload 'preview-report-bug "preview" "\
Report a bug in the preview-latex package." t)


;;; Generated autoloads from tex.el

(autoload 'TeX-tex-mode "tex" "\
Call suitable AUCTeX major mode for editing TeX or LaTeX files.
Tries to guess whether this file is for plain TeX or LaTeX.

The algorithm is as follows:

   1) If the file is empty or `TeX-force-default-mode' is not set to nil,
      `TeX-default-mode' is chosen.
   2) If non-commented out content matches with regular expression in
      `TeX-format-list', use the associated major mode.  For example,
      if \\documentclass or \\begin{, \\section{, \\part{ or \\chapter{ is
      found, `LaTeX-mode' is selected.
   3) Otherwise, use `TeX-default-mode'.

By default, `TeX-format-list' has a fallback entry for
`plain-TeX-mode', thus non-empty file which didn't match any
other entries will enter `plain-TeX-mode'." t)
 (if (eq (symbol-function 'TeX-mode) 'tex-mode)
    (defalias 'TeX-mode nil))
(put 'TeX-mode 'auctex-function-definition (symbol-function 'TeX-mode))
(autoload 'TeX-auto-generate "tex" "\
Generate style file for TEX and store it in AUTO.
If TEX is a directory, generate style files for all files in the directory.

(fn TEX AUTO)" t)
(autoload 'TeX-auto-generate-global "tex" "\
Create global auto directory for global TeX macro definitions." t)
(autoload 'TeX-submit-bug-report "tex" "\
Submit a bug report on AUCTeX via mail.

Don't hesitate to report any problems or inaccurate documentation.

If you don't have setup sending mail from Emacs, please copy the
output buffer into your mail program, as it gives us important
information about your AUCTeX version and AUCTeX configuration." t)


;;; Generated autoloads from tex-bar.el

(autoload 'TeX-install-toolbar "tex-bar" "\
Install toolbar buttons for TeX mode." t)
(autoload 'LaTeX-install-toolbar "tex-bar" "\
Install toolbar buttons for LaTeX mode." t)


;;; Generated autoloads from tex-fold.el

(autoload 'TeX-fold-mode "tex-fold" "\
Minor mode for hiding and revealing macros and environments.

Called interactively, with no prefix argument, toggle the mode.
With universal prefix ARG (or if ARG is nil) turn mode on.
With zero or negative ARG turn mode off.

(fn &optional ARG)" t)
(defalias 'tex-fold-mode #'TeX-fold-mode)


;;; Generated autoloads from tex-font.el

(autoload 'tex-font-setup "tex-font" "\
Setup font lock support for TeX.")


;;; Generated autoloads from tex-info.el

(autoload 'Texinfo-mode "tex-info" "\
Major mode in AUCTeX for editing Texinfo files.

Entering Texinfo mode calls the value of `text-mode-hook' and then the
value of `Texinfo-mode-hook'.

(fn)" t)


;;; Generated autoloads from tex-jp.el

(autoload 'japanese-plain-TeX-mode "tex-jp" "\
Major mode in AUCTeX for editing Japanese plain TeX files.

(fn)" t)
(defalias 'japanese-plain-tex-mode #'japanese-plain-TeX-mode)
(autoload 'japanese-LaTeX-mode "tex-jp" "\
Major mode in AUCTeX for editing Japanese LaTeX files.

(fn)" t)
(defalias 'japanese-latex-mode #'japanese-LaTeX-mode)


;;; Generated autoloads from tex-site.el

 (require 'tex-site)


;;; Generated autoloads from texmathp.el

(autoload 'texmathp "texmathp" "\
Determine if point is inside (La)TeX math mode.
Returns t or nil.  Additional info is placed into `texmathp-why'.
The functions assumes that you have (almost) syntactically correct (La)TeX in
the buffer.
See the variable `texmathp-tex-commands' about which commands are checked." t)
(autoload 'texmathp-match-switch "texmathp" "\
Search backward for any of the math switches.
Limit searched to BOUND.

(fn BOUND)")


;;; Generated autoloads from toolbar-x.el

 (autoload 'toolbarx-install-toolbar "toolbar-x")

;;; End of scraped data

(provide 'auctex-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; auctex-autoloads.el ends here
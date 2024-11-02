;;; js2-refactor-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:



;;; Generated autoloads from js2-refactor.el

(autoload 'js2-refactor-mode "js2-refactor" "\
Minor mode providing JavaScript refactorings.

This is a minor mode.  If called interactively, toggle the
`Js2-Refactor mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `js2-refactor-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t)
(autoload 'js2r-add-keybindings-with-prefix "js2-refactor" "\
Add js2r keybindings using the prefix PREFIX.

(fn PREFIX)")
(autoload 'js2r-add-keybindings-with-modifier "js2-refactor" "\
Add js2r keybindings using the modifier MODIFIER.

(fn MODIFIER)")


;;; Generated autoloads from js2r-vars.el

(autoload 'js2r-rename-var "js2r-vars" "\
Renames the variable on point and all occurrences in its lexical scope." t)
(autoload 'js2r-extract-var "js2r-vars" nil t)
(autoload 'js2r-extract-let "js2r-vars" nil t)
(autoload 'js2r-extract-const "js2r-vars" nil t)

;;; End of scraped data

(provide 'js2-refactor-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; js2-refactor-autoloads.el ends here

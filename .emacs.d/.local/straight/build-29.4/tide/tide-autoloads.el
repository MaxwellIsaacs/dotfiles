;;; tide-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:



;;; Generated autoloads from tide.el

(autoload 'company-tide "tide" "\


(fn COMMAND &optional ARG &rest IGNORED)" t)
(autoload 'tide-format-before-save "tide" "\
Before save hook to format the buffer before each save." t)
(autoload 'tide-format "tide" "\
Format the current region or buffer." t)
(autoload 'tide-setup "tide" "\
Setup `tide-mode' in current buffer." t)
(autoload 'tide-mode "tide" "\
Minor mode for Typescript Interactive Development Environment.

\\{tide-mode-map}

This is a minor mode.  If called interactively, toggle the `tide
mode' mode.  If the prefix argument is positive, enable the mode,
and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `tide-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t)
(autoload 'tide-project-errors "tide" nil t)
(autoload 'tide-unhighlight-identifiers "tide" "\
Remove highlights from previously highlighted identifier.")
(autoload 'tide-hl-identifier "tide" "\
Highlight all instances of the identifier under point. Removes
highlights from previously highlighted identifier." t)
(autoload 'tide-hl-identifier-mode "tide" "\
Highlight instances of the identifier at point after a short

timeout.

This is a minor mode.  If called interactively, toggle the
`Tide-Hl-Identifier mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `tide-hl-identifier-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t)

;;; End of scraped data

(provide 'tide-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; tide-autoloads.el ends here

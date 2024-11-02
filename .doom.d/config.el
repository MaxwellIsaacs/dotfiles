;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
;;


(after! org
  (setq org-html-head ""
        org-html-postamble nil
        org-html-preamble t
        org-html-head-include-default-style nil)

  ;; Custom HTML export settings with new CSS and footer
  (setq org-html-postamble-format
        '(("en" "<footer><p class='author'>Author: %a</p><p class='date'>Created: %d</p></footer>")))

  (setq org-html-head
        "<style>
          /* Custom CSS */
          body { font-family: 'Roboto', 'Open Sans', sans-serif; max-width: 60em; margin: 0 auto; padding: 2em; background-color: #f9f9f9; color: #333; line-height: 1.6; font-size: 0.9em; }
          h1, h2, h3, h4 { color: #2c3e50; margin-top: 1.5em; border-bottom: 2px solid #ecf0f1; padding-bottom: 0.5em; }
          p, li { font-size: 1em; line-height: 1.6; margin-bottom: 1em; }
          code, pre { background-color: #f3f4f6; border-radius: 5px; padding: 0.8em; font-family: 'Courier New', monospace; overflow: auto; margin: 1.2em; font-size: 0.85em; }
          blockquote { border-left: 4px solid #3498db; padding-left: 1em; color: #555; font-style: italic; background-color: #f4f7f9; margin: 1em 0; }
          table { border-collapse: collapse; width: 100%; }
          td, th { border: 1px solid #ddd; padding: 8px; text-align: left; }
          th { background-color: #f2f2f2; font-weight: bold; }
          .todo { font-family: monospace; color: red; }
          .VOCAB { font-family: monospace; color: #6879D0; }
          .done { font-family: monospace; color: green; }
          .priority { font-family: monospace; color: orange; }
        </style>")
)


;; Custom org mode bindings, makes my note taking easier
(after! org
  (setq org-todo-keywords
        '((sequence "TODO" "VOCAB" "|" "DONE")))
  (setq org-todo-keyword-faces
        '(("VOCAB" . "orange")   ;; Set color for VOCAB keyword
          ("TODO" . "red")
          ("DONE" . "green"))))


(map! :map org-mode-map
      :leader
      :prefix ("l" . "vocab")
      :desc "Insert VOCAB todo entry" "d" (lambda ()
                                              (interactive)
                                              (insert "VOCAB\n  - Definition: \n  - Example: \n")))

(after! org
  (font-lock-add-keywords 'org-mode
    '(("\\<\\(TODO\\|VOCAB\\)\\>" 1 'org-todo-keyword t))))
(add-to-list 'default-frame-alist '(undecorated . t))

(defun collect-vocab-entries ()
  "Collect all VOCAB entries (as ** subheadings) from org files and save them in a new document."
  (interactive)
  (let ((output-file "~/vocab-collection.org")  ;; Change this path to where you want the document saved
        (vocab-entries '()))
    ;; Loop through all org files in the 'school/Econ' directory
    (dolist (file (directory-files-recursively "~/school/Econ/" "\\.org$"))
      (with-temp-buffer
        (insert-file-contents file)
        (org-mode)
        ;; Search for all ** VOCAB entries
        (goto-char (point-min))
        (while (re-search-forward "^\\*\\* VOCAB" nil t)
          (let ((definition nil)
                (example nil)
                (related-vocab nil))
            ;; Search for list items under VOCAB (Definition, Example, Related Vocab)
            (save-excursion
              (when (re-search-forward "^- Definition" nil t)
                (setq definition (buffer-substring-no-properties
                                  (line-beginning-position)
                                  (progn (org-end-of-item) (point)))))
              (when (re-search-forward "^- Example" nil t)
                (setq example (buffer-substring-no-properties
                               (line-beginning-position)
                               (progn (org-end-of-item) (point)))))
              (when (re-search-forward "^- Related Vocab" nil t)
                (setq related-vocab (buffer-substring-no-properties
                                     (line-beginning-position)
                                     (progn (org-end-of-item) (point))))))
            ;; Store the entry
            (push (list :definition definition
                        :example example
                        :related-vocab related-vocab)
                  vocab-entries)))))

    ;; Write vocab entries to the output file
    (with-temp-file output-file
      (insert "#+TITLE: Collected Vocab Entries\n\n")
      (dolist (entry vocab-entries)
        (insert "** VOCAB\n")
        (when-let ((definition (plist-get entry :definition)))
          (insert "*** Definition\n" definition "\n"))
        (when-let ((example (plist-get entry :example)))
          (insert "*** Example\n" example "\n"))
        (when-let ((related-vocab (plist-get entry :related-vocab)))
          (insert "*** Related Vocab\n" related-vocab "\n"))
        (insert "\n")))))



(setq treemacs-position 'right)
(global-unset-key (kbd "s-"))


;; Set the theme in Doom Emacs
;; in ~/.doom.d/config.el
;;(require 'eaf-browser);(require 'exwm-config)
;(exwm-config-default)

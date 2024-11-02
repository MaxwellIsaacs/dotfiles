(if (or (doom-context-p 'init) (doom-context-p 'reload)) (doom-context-with 'modules (set 'doom-modules '#s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data ((:core) (:path "/home/max/.emacs.d/lisp/" :depth -110) (:user) (:path "/home/max/.doom.d/" :depth (-105 . 105)) (:config . use-package) (:path "/home/max/.emacs.d/modules/config/use-package" :depth -111) (:completion . company) (:path "/home/max/.emacs.d/modules/completion/company" :flags nil) (:completion . corfu) (:path "/home/max/.emacs.d/modules/completion/corfu" :flags (+orderless)) (:completion . vertico) (:path "/home/max/.emacs.d/modules/completion/vertico" :flags nil) (:ui . doom) (:path "/home/max/.emacs.d/modules/ui/doom" :flags nil) (:ui . doom-dashboard) (:path "/home/max/.emacs.d/modules/ui/doom-dashboard" :flags nil) (:ui . hl-todo) (:path "/home/max/.emacs.d/modules/ui/hl-todo" :flags nil) (:ui . modeline) (:path "/home/max/.emacs.d/modules/ui/modeline" :flags nil) (:ui . ophints) (:path "/home/max/.emacs.d/modules/ui/ophints" :flags nil) (:ui . popup) (:path "/home/max/.emacs.d/modules/ui/popup" :flags (+defaults)) (:ui . treemacs) (:path "/home/max/.emacs.d/modules/ui/treemacs" :flags nil) (:ui . vc-gutter) (:path "/home/max/.emacs.d/modules/ui/vc-gutter" :flags (+pretty)) (:ui . vi-tilde-fringe) (:path "/home/max/.emacs.d/modules/ui/vi-tilde-fringe" :flags nil) (:ui . workspaces) (:path "/home/max/.emacs.d/modules/ui/workspaces" :flags nil) (:ui . zen) (:path "/home/max/.emacs.d/modules/ui/zen" :flags nil) (:editor . evil) (:path "/home/max/.emacs.d/modules/editor/evil" :flags (+everywhere)) (:editor . file-templates) (:path "/home/max/.emacs.d/modules/editor/file-templates" :flags nil) (:editor . fold) (:path "/home/max/.emacs.d/modules/editor/fold" :flags nil) (:editor . snippets) (:path "/home/max/.emacs.d/modules/editor/snippets" :flags nil) (:emacs . dired) (:path "/home/max/.emacs.d/modules/emacs/dired" :flags nil) (:emacs . electric) (:path "/home/max/.emacs.d/modules/emacs/electric" :flags nil) (:emacs . undo) (:path "/home/max/.emacs.d/modules/emacs/undo" :flags nil) (:emacs . vc) (:path "/home/max/.emacs.d/modules/emacs/vc" :flags nil) (:checkers . syntax) (:path "/home/max/.emacs.d/modules/checkers/syntax" :flags nil) (:checkers . spell) (:path "/home/max/.emacs.d/modules/checkers/spell" :flags (+flyspell)) (:checkers . grammar) (:path "/home/max/.emacs.d/modules/checkers/grammar" :flags nil) (:tools . eval) (:path "/home/max/.emacs.d/modules/tools/eval" :flags (+overlay)) (:tools . lookup) (:path "/home/max/.emacs.d/modules/tools/lookup" :flags nil) (:tools . magit) (:path "/home/max/.emacs.d/modules/tools/magit" :flags nil) (:tools . pdf) (:path "/home/max/.emacs.d/modules/tools/pdf" :flags nil) (:tools . tmux) (:path "/home/max/.emacs.d/modules/tools/tmux" :flags nil) (:os . tty) (:path "/home/max/.emacs.d/modules/os/tty" :flags nil) (:lang . cc) (:path "/home/max/.emacs.d/modules/lang/cc" :flags (+lsp)) (:lang . emacs-lisp) (:path "/home/max/.emacs.d/modules/lang/emacs-lisp" :flags nil) (:lang . java) (:path "/home/max/.emacs.d/modules/lang/java" :flags (+lsp)) (:lang . javascript) (:path "/home/max/.emacs.d/modules/lang/javascript" :flags nil) (:lang . julia) (:path "/home/max/.emacs.d/modules/lang/julia" :flags nil) (:lang . latex) (:path "/home/max/.emacs.d/modules/lang/latex" :flags nil) (:lang . markdown) (:path "/home/max/.emacs.d/modules/lang/markdown" :flags nil) (:lang . org) (:path "/home/max/.emacs.d/modules/lang/org" :flags nil) (:lang . rust) (:path "/home/max/.emacs.d/modules/lang/rust" :flags (+lsp)) (:lang . sh) (:path "/home/max/.emacs.d/modules/lang/sh" :flags nil) (:app . calendar) (:path "/home/max/.emacs.d/modules/app/calendar" :flags nil) (:config . default) (:path "/home/max/.emacs.d/modules/config/default" :flags (+bindings +smartparens))))) (set 'doom-disabled-packages 'nil) (setplist ':core '(nil [0 -110 -110 :core nil nil nil])) (setplist ':user '(nil [1 105 -105 :user nil nil nil])) (setplist ':completion '(company [3 0 0 :completion company nil nil] corfu [4 0 0 :completion corfu (+orderless) nil] vertico [5 0 0 :completion vertico nil nil])) (setplist ':ui '(doom [6 0 0 :ui doom nil nil] doom-dashboard [7 0 0 :ui doom-dashboard nil nil] hl-todo [8 0 0 :ui hl-todo nil nil] modeline [9 0 0 :ui modeline nil nil] ophints [10 0 0 :ui ophints nil nil] popup [11 0 0 :ui popup (+defaults) nil] treemacs [12 0 0 :ui treemacs nil nil] vc-gutter [13 0 0 :ui vc-gutter (+pretty) nil] vi-tilde-fringe [14 0 0 :ui vi-tilde-fringe nil nil] workspaces [15 0 0 :ui workspaces nil nil] zen [16 0 0 :ui zen nil nil])) (setplist ':editor '(evil [17 0 0 :editor evil (+everywhere) nil] file-templates [18 0 0 :editor file-templates nil nil] fold [19 0 0 :editor fold nil nil] snippets [20 0 0 :editor snippets nil nil])) (setplist ':emacs '(dired [21 0 0 :emacs dired nil nil] electric [22 0 0 :emacs electric nil nil] undo [23 0 0 :emacs undo nil nil] vc [24 0 0 :emacs vc nil nil])) (setplist ':checkers '(syntax [25 0 0 :checkers syntax nil nil] spell [26 0 0 :checkers spell (+flyspell) nil] grammar [27 0 0 :checkers grammar nil nil])) (setplist ':tools '(eval [28 0 0 :tools eval (+overlay) nil] lookup [29 0 0 :tools lookup nil nil] magit [30 0 0 :tools magit nil nil] pdf [31 0 0 :tools pdf nil nil] tmux [32 0 0 :tools tmux nil nil])) (setplist ':os '(tty [33 0 0 :os tty nil nil])) (setplist ':lang '(cc [34 0 0 :lang cc (+lsp) nil] emacs-lisp [35 0 0 :lang emacs-lisp nil nil] java [36 0 0 :lang java (+lsp) nil] javascript [37 0 0 :lang javascript nil nil] julia [38 0 0 :lang julia nil nil] latex [39 0 0 :lang latex nil nil] markdown [40 0 0 :lang markdown nil nil] org [41 0 0 :lang org nil nil] rust [42 0 0 :lang rust (+lsp) nil] sh [43 0 0 :lang sh nil nil])) (setplist ':app '(calendar [44 0 0 :app calendar nil nil])) (setplist ':config '(use-package [2 -111 -111 :config use-package nil nil] default [45 0 0 :config default (+bindings +smartparens) nil])) (let ((old-custom-file custom-file)) (let ((doom-module-context [2 -111 -111 :config use-package nil nil])) (doom-load "~/.emacs.d/modules/config/use-package/init" t)) (let ((doom-module-context [0 -110 -110 :core nil nil nil])) (doom-load (file-name-concat doom-core-dir "init") t)) (doom-run-hooks 'doom-before-modules-init-hook) (let ((doom-module-context [17 0 0 :editor evil (+everywhere) nil])) (doom-load "~/.emacs.d/modules/editor/evil/init" t)) (doom-run-hooks 'doom-after-modules-init-hook) (doom-run-hooks 'doom-before-modules-config-hook) (let ((doom-module-context [3 0 0 :completion company nil nil])) (doom-load "~/.emacs.d/modules/completion/company/config" t)) (let ((doom-module-context [4 0 0 :completion corfu (+orderless) nil])) (doom-load "~/.emacs.d/modules/completion/corfu/config" t)) (let ((doom-module-context [5 0 0 :completion vertico nil nil])) (doom-load "~/.emacs.d/modules/completion/vertico/config" t)) (let ((doom-module-context [6 0 0 :ui doom nil nil])) (doom-load "~/.emacs.d/modules/ui/doom/config" t)) (let ((doom-module-context [7 0 0 :ui doom-dashboard nil nil])) (doom-load "~/.emacs.d/modules/ui/doom-dashboard/config" t)) (let ((doom-module-context [8 0 0 :ui hl-todo nil nil])) (doom-load "~/.emacs.d/modules/ui/hl-todo/config" t)) (let ((doom-module-context [9 0 0 :ui modeline nil nil])) (doom-load "~/.emacs.d/modules/ui/modeline/config" t)) (let ((doom-module-context [10 0 0 :ui ophints nil nil])) (doom-load "~/.emacs.d/modules/ui/ophints/config" t)) (let ((doom-module-context [11 0 0 :ui popup (+defaults) nil])) (doom-load "~/.emacs.d/modules/ui/popup/config" t)) (let ((doom-module-context [12 0 0 :ui treemacs nil nil])) (doom-load "~/.emacs.d/modules/ui/treemacs/config" t)) (let ((doom-module-context [13 0 0 :ui vc-gutter (+pretty) nil])) (doom-load "~/.emacs.d/modules/ui/vc-gutter/config" t)) (let ((doom-module-context [15 0 0 :ui workspaces nil nil])) (doom-load "~/.emacs.d/modules/ui/workspaces/config" t)) (let ((doom-module-context [16 0 0 :ui zen nil nil])) (doom-load "~/.emacs.d/modules/ui/zen/config" t)) (let ((doom-module-context [17 0 0 :editor evil (+everywhere) nil])) (doom-load "~/.emacs.d/modules/editor/evil/config" t)) (let ((doom-module-context [18 0 0 :editor file-templates nil nil])) (doom-load "~/.emacs.d/modules/editor/file-templates/config" t)) (let ((doom-module-context [19 0 0 :editor fold nil nil])) (doom-load "~/.emacs.d/modules/editor/fold/config" t)) (let ((doom-module-context [20 0 0 :editor snippets nil nil])) (doom-load "~/.emacs.d/modules/editor/snippets/config" t)) (let ((doom-module-context [21 0 0 :emacs dired nil nil])) (doom-load "~/.emacs.d/modules/emacs/dired/config" t)) (let ((doom-module-context [22 0 0 :emacs electric nil nil])) (doom-load "~/.emacs.d/modules/emacs/electric/config" t)) (let ((doom-module-context [23 0 0 :emacs undo nil nil])) (doom-load "~/.emacs.d/modules/emacs/undo/config" t)) (let ((doom-module-context [24 0 0 :emacs vc nil nil])) (doom-load "~/.emacs.d/modules/emacs/vc/config" t)) (let ((doom-module-context [25 0 0 :checkers syntax nil nil])) (doom-load "~/.emacs.d/modules/checkers/syntax/config" t)) (let ((doom-module-context [26 0 0 :checkers spell (+flyspell) nil])) (doom-load "~/.emacs.d/modules/checkers/spell/config" t)) (let ((doom-module-context [27 0 0 :checkers grammar nil nil])) (doom-load "~/.emacs.d/modules/checkers/grammar/config" t)) (let ((doom-module-context [28 0 0 :tools eval (+overlay) nil])) (doom-load "~/.emacs.d/modules/tools/eval/config" t)) (let ((doom-module-context [29 0 0 :tools lookup nil nil])) (doom-load "~/.emacs.d/modules/tools/lookup/config" t)) (let ((doom-module-context [30 0 0 :tools magit nil nil])) (doom-load "~/.emacs.d/modules/tools/magit/config" t)) (let ((doom-module-context [31 0 0 :tools pdf nil nil])) (doom-load "~/.emacs.d/modules/tools/pdf/config" t)) (let ((doom-module-context [33 0 0 :os tty nil nil])) (doom-load "~/.emacs.d/modules/os/tty/config" t)) (let ((doom-module-context [34 0 0 :lang cc (+lsp) nil])) (doom-load "~/.emacs.d/modules/lang/cc/config" t)) (let ((doom-module-context [35 0 0 :lang emacs-lisp nil nil])) (doom-load "~/.emacs.d/modules/lang/emacs-lisp/config" t)) (let ((doom-module-context [36 0 0 :lang java (+lsp) nil])) (doom-load "~/.emacs.d/modules/lang/java/config" t)) (let ((doom-module-context [37 0 0 :lang javascript nil nil])) (doom-load "~/.emacs.d/modules/lang/javascript/config" t)) (let ((doom-module-context [38 0 0 :lang julia nil nil])) (doom-load "~/.emacs.d/modules/lang/julia/config" t)) (let ((doom-module-context [39 0 0 :lang latex nil nil])) (doom-load "~/.emacs.d/modules/lang/latex/config" t)) (let ((doom-module-context [40 0 0 :lang markdown nil nil])) (doom-load "~/.emacs.d/modules/lang/markdown/config" t)) (let ((doom-module-context [41 0 0 :lang org nil nil])) (doom-load "~/.emacs.d/modules/lang/org/config" t)) (let ((doom-module-context [42 0 0 :lang rust (+lsp) nil])) (doom-load "~/.emacs.d/modules/lang/rust/config" t)) (let ((doom-module-context [43 0 0 :lang sh nil nil])) (doom-load "~/.emacs.d/modules/lang/sh/config" t)) (let ((doom-module-context [44 0 0 :app calendar nil nil])) (doom-load "~/.emacs.d/modules/app/calendar/config" t)) (let ((doom-module-context [45 0 0 :config default (+bindings +smartparens) nil])) (doom-load "~/.emacs.d/modules/config/default/config" t)) (doom-run-hooks 'doom-after-modules-config-hook) (let ((doom-module-context [1 105 -105 :user nil nil nil])) (doom-load (file-name-concat doom-user-dir "config") t)) (when (eq custom-file old-custom-file) (doom-load custom-file 'noerror)))))
;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     csv
     rust
     shell-scripts
     javascript
     html
     python
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     helm
     auto-completion
     ;; better-defaults
     emacs-lisp
     git
     ;; markdown
     ;; org
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     syntax-checking
     version-control
     themes-megapack
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(highlight-indent-guides)
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update t
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((projects . 7)
                                (recents . 5))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(sanityinc-solarized-light
                         sanityinc-tomorrow-night)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13  ;; 16
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.6
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server t
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  (setq
   highlight-indent-guides-method 'character
   python-auto-set-local-pyenv-version 'on-project-switch
   )
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  (setq debug-on-error t)
  ;;; No acceleration in mouse scroll speed:
  (setq mouse-wheel-progressive-speed nil)
  (setq sp-escape-quotes-after-insert nil)
  (setq exec-path-from-shell-check-startup-files nil)
  ;; TODO: Disable matchit-mode. At least in Python. Or move it to another key.

  ;;; Attempt to work around the bug in undo-tree where
  (setq undo-tree-enable-undo-in-region nil)

  ;;; Spaceline configuration:
  (setq powerline-default-separator 'contour)
  (spaceline-toggle-buffer-size-off)
  (spaceline-toggle-buffer-encoding-abbrev-off)
  (spaceline-toggle-version-control-off)
  (spaceline-toggle-python-pyenv-off)
  ;; TODO: Hide which-key-mode, and possibly other minor modes using diminish
  ;; TODO: Shorten some segments by defining my own segments and compiling my on
  ;; modeline format?
  ;; TODO: Try to hide segments gradually when frame width decreases

  ;; ;;; Nice indent highlighting
  ;; (add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
  ;; (setq highlight-indent-guides-method 'character)

  ;; ;;; Tell projectile to ignore .pyc files and other trash.
  ;; (add-to-list 'projectile-globally-ignored-file-suffixes ".pyc")
  ;; (add-to-list 'projectile-globally-ignored-file-suffixes "~")

  ;;; Command for restarting flycheck checker after it has encountered too many
  ;;; errors.
  (defun my-flycheck-restart-checker ()
    "Restart flycheck."
    (interactive)
    (setq flycheck-disabled-checkers nil)
    (flycheck-buffer))

  ;; ;;; Enable linum-mode only in the buffer of the currently select window.
  ;; ;;; TODO: Make this play nice with ahs transient mode.
  ;; (defun linum-mode-only-in-current (orig-fun &rest args)
  ;;   "Disable linum-mode in the buffer that I am leaving, and enable it in the
  ;;   one I'm going to."
  ;;   (if (not (string-match-p "^ ?\\*.*\\*$" (buffer-name (window-buffer))))
  ;;       (linum-mode 0))
  ;;   (apply orig-fun args)
  ;;   (if (not (string-match-p "^ ?\\*.*\\*$" (buffer-name (window-buffer))))
  ;;     (linum-mode 1)))
  ;; (advice-add 'set-window-buffer :around #'linum-mode-only-in-current)
  ;; (advice-add 'select-window :around #'linum-mode-only-in-current)

  ;;; Don't treat underscore as word separator in python. This is important
  ;;; e.g. when using * for searching for a word. Test_word.
  (spacemacs|add-toggle underscore-part-of-word
    :documentation "Treat underscore as part of a word."
    :status (eq (char-syntax ?_) ?w)
    :on (modify-syntax-entry ?_ "w")
    :off (modify-syntax-entry ?_ "_")
    :evil-leader "t_")
  (add-hook 'python-mode-hook 'spacemacs/toggle-underscore-part-of-word-on)

  ;;; Backspace should pass line endings.
  (define-key evil-normal-state-map (kbd "<backspace>") 'backward-char)

  ;;; Q as alias for gq.
  (define-key evil-normal-state-map (kbd "Q") 'evil-fill-and-move)

  ;; (define-key evil-normal-state-map (kbd "s") 'evil-surround-edit)

  ;;; Define safe select window functions
  (dotimes (i 10)
    (eval `(defun ,(intern (format "safe-select-window-%s" i)) ()
             "Select the window with number %i. No argument accepted."
             (interactive)
             (winum-select-window-by-number ,i)))
    (define-key evil-normal-state-map (kbd (format "SPC %s" i))
      (intern (format "safe-select-window-%s" i))))

  ;; ;;; Attempt to fix paragraph filling of python strings:
  ;; (defun odd-number-of-single-quotes-this-paragraph-so-far ()
  ;;   (oddp (how-many "'" (save-excursion (backward-paragraph) (point)) (point))))
  ;; (defun odd-number-of-double-quotes-this-paragraph-so-far ()
  ;;   (oddp (how-many "\"" (save-excursion (backward-paragraph) (point)) (point))))
  ;; (add-to-list 'fill-nobreak-predicate
  ;;              'odd-number-of-single-quotes-this-paragraph-so-far)
  ;; (add-to-list 'fill-nobreak-predicate
  ;;              'odd-number-of-double-quotes-this-paragraph-so-far)
  ;; ; Didn't work =( Always keeps single quoted strings as long lines instead of breaking them and inserting new quotes.

  ;; ;;; Define an evil operator which "stamps" over a text object/motion/visual
  ;; ;;; selection.
  ;; (evil-define-operator my-stamp-last-yanked (beg end)
  ;;   "Delete the selected text into the black hole register and replace it
  ;;   with the last yanked text."
  ;;   (interactive "<R><x><y>")
  ;;   (evil-delete beg end count :register "_")
  ;;   (evil-paste-after))
  ;; (define-key evil-normal-state-map (kbd "g r") 'my-stamp-last-yanked)

  ;; ;;; Define evil motions for flycheck to make sure that ] e and [ e don't create
  ;; ;;; repeatable commands.
  ;; (evil-define-motion my-evil-flycheck-next-error (count)
  ;;   "Move to next flycheck error as an evil motion."
  ;;   (evil-motion-loop (nil (or count 1))
  ;;     (flycheck-next-error)))
  ;; (evil-define-motion my-evil-flycheck-previous-error (count)
  ;;   "Move to previous flycheck error as an evil motion."
  ;;   (evil-motion-loop (nil (or count 1))
  ;;     (flycheck-previous-error)))

  ;; ;;; Bind some vim keys
  ;; (define-key evil-normal-state-map (kbd "C-q") 'evil-visual-block)
  ;; (define-key evil-normal-state-map (kbd "SPC") 'forward-char)
  ;; (define-key evil-insert-state-map (kbd "C-v") 'evil-visual-paste)

  ;; ;;; Extend the "vim language" with more motions, textobjects and operators
  ;; ;; Motions
  ;; (define-key evil-normal-state-map (kbd "] e") 'my-evil-flycheck-next-error)
  ;; (define-key evil-normal-state-map (kbd "[ e") 'my-evil-flycheck-previous-error)
  ;; ;; Text objects
  ;; (load-user-file "evil-textobj-between.el")
  ;; (define-key evil-outer-text-objects-map (kbd "f") 'evil-a-between)
  ;; (define-key evil-inner-text-objects-map (kbd "f") 'evil-inner-between)
  ;; ;; Operators
  ;; (load-user-file "evil-ReplaceWithRegister/evil-ReplaceWithRegister.el")
  ;; (define-key evil-normal-state-map (kbd "g r") 'evil-ReplaceWithRegister)

  ;; ;;; Improved buffer movements
  ;; (load-user-file "colshift/colshift.el")
  ;; (define-key evil-normal-state-map (kbd "C-w J") 'buf-move-down)
  ;; (define-key evil-normal-state-map (kbd "C-w K") 'buf-move-up)
  ;; (define-key evil-normal-state-map (kbd "C-w H") 'colshift/shift-left)
  ;; (define-key evil-normal-state-map (kbd "C-w L") 'colshift/shift-right)
  ;; (define-key evil-normal-state-map (kbd "C-w q") 'evil-window-delete)
  (setq debug-on-error nil)
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(evil-want-Y-yank-to-eol nil)
 '(js-indent-level 2)
 '(package-selected-packages
   (quote
    (smeargle orgit magit-gitflow helm-gitignore gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link evil-magit magit magit-popup git-commit ghub async let-alist with-editor dash csv-mode zenburn-theme zen-and-art-theme yapfify ws-butler winum white-sand-theme which-key web-mode web-beautify volatile-highlights vi-tilde-fringe uuidgen use-package underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme toml-mode toc-org tao-theme tangotango-theme tango-plus-theme tango-2-theme tagedit sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spaceline spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme slim-mode seti-theme scss-mode sass-mode reverse-theme restart-emacs request rebecca-theme rainbow-delimiters railscasts-theme racer pyvenv pytest pyenv-mode py-isort purple-haze-theme pug-mode professional-theme popwin planet-theme pip-requirements phoenix-dark-pink-theme phoenix-dark-mono-theme persp-mode pcre2el paradox organic-green-theme org-plus-contrib org-bullets open-junk-file omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme neotree naquadah-theme mustang-theme move-text monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme madhat2r-theme macrostep lush-theme lorem-ipsum livid-mode live-py-mode linum-relative link-hint light-soap-theme less-css-mode json-mode js2-refactor js-doc jbeans-theme jazz-theme ir-black-theme insert-shebang inkpot-theme indent-guide hy-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation highlight-indent-guides heroku-theme hemisu-theme helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme google-translate golden-ratio git-gutter-fringe git-gutter-fringe+ gandalf-theme fuzzy flycheck-rust flycheck-pos-tip flx-ido flatui-theme flatland-theme fish-mode fill-column-indicator farmhouse-theme fancy-battery eyebrowse expand-region exotica-theme exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu espresso-theme emmet-mode elisp-slime-nav dumb-jump dracula-theme django-theme diminish diff-hl define-word darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme cython-mode cyberpunk-theme company-web company-tern company-statistics company-shell company-anaconda column-enforce-mode color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized coffee-mode clues-theme clean-aindent-mode cherry-blossom-theme cargo busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme auto-yasnippet auto-highlight-symbol auto-compile apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes aggressive-indent afternoon-theme adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))

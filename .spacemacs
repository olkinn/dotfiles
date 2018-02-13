;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration."
  (setq-default
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     auto-completion
     better-defaults
     emacs-lisp
     yaml
     git
     markdown
     org
     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom
            shell-default-term-shell "/usr/local/bin/fish")
     syntax-checking
     version-control
     evil-commentary
     osx
     clojure
     haskell
     html
     javascript
     ess
     scala
     ruby
     sql
     emoji
     games
     xkcd
     evernote
     vim-empty-lines
     (colors :variables
             colors-enable-rainbow-identifiers nil)
             ;;colors-enable-nyan-cat-progress-bar t)
     org
     restclient
     themes-megapack
     tmux
     extra-langs
     github
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/config'.
   dotspacemacs-additional-packages '(
                                      sqlup-mode
                                      jade-mode
                                      forest-blue-theme
                                      )
   ;; A list of packages and/or extensions that will not be install and loaded.
   ;; dotspacemacs-excluded-packages '(pbcopy)
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'
   dotspacemacs-delete-orphan-packages nil))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; Either `vim' or `emacs'. Evil is always enabled but if the variable
   ;; is `emacs' then the `holy-mode' is enabled at startup.
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer.
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed.
   dotspacemacs-startup-banner 'official
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'."
   dotspacemacs-startup-lists '(recents projects)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(default
                         molokai
                         spolsky
                         solarized-light
                         solarized-dark
                         spacemacs-light)
   ;; If non nil the cursor color matches the state color.
   ;; dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("PragmataPro for Powerline"
                               :size 14
                               :weight light
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it.
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; Default value is `cache'.
   dotspacemacs-auto-save-file-location 'cache
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f) is replaced.
   dotspacemacs-use-ido nil
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content.
   dotspacemacs-enable-paste-micro-state nil
   ;; Guide-key delay in seconds. The Guide-key is the popup buffer listing
   ;; the commands bound to the current keystrokes.
   dotspacemacs-guide-key-delay 0.4
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil ;; to boost the loading time.
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up.
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX."
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-active-transparency 100
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-inactive-transparency 60
   ;; If non nil unicode symbols are displayed in the mode line.
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen.
   dotspacemacs-smooth-scrolling t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible value is `all',
   ;; `current' or `nil'. Default is `all'
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now.
   dotspacemacs-default-package-repository nil
   )
  ;; User initialization goes here
  )

(defun dotspacemacs/user-config ()
  "Configuration function.
 This function is called at the very end of Spacemacs initialization after
layers configuration."
  ;; (add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))
  ;; (defadvice web-mode-highlight-part (around tweak-jsx activate)
  ;;   (if (equal web-mode-content-type "jsx")
  ;;       (let ((web-mode-enable-part-face nil))
  ;;         ad-do-it)
  ;;     ad-do-it))
  ;; (add-to-list 'auto-mode-alist '("\\.jsx\\'" . jsx-mode))
  (setq powerline-default-separator 'nil)
  (add-hook 'before-save-hook 'delete-trailing-whitespace)
  (load-theme 'forest-blue)
  ;; (defun on-after-init ()
    (unless (display-graphic-p (selected-frame))
      (set-face-background 'default "unspecified-bg" (selected-frame)))

  ;; (add-hook 'window-setup-hook 'on-after-init)
)

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ahs-case-fold-search nil)
 '(ahs-default-range (quote ahs-range-whole-buffer))
 '(ahs-idle-interval 0.25)
 '(ahs-idle-timer 0 t)
 '(ahs-inhibit-face-list nil)
 '(ansi-color-names-vector
   ["#080808" "#d70000" "#67b11d" "#875f00" "#268bd2" "#af00df" "#00ffff" "#b2b2b2"])
 '(custom-safe-themes
   (quote
    ("66881e95c0eda61d34aa7f08ebacf03319d37fe202d68ecf6a1dbfd49d664bc3" "4c2005d69dc2f3d5ffaa57dc3d9d7365110bbf67abda03bffac0cda533aaf870" "068dce6a7cf7ccd10726d006b8120631d35dd03eb069b8322fc37cf2ff194574" "f19c69999135e14072174af53633359ad5d3f9e3335d32943a2cfc6ae47bf369" "1c60250030eef11f40fb339ec90fd9105ed12cf85dfbac85b8736a1b74e14ef0" "284f4f38e9896008984cf5e922dd1e5759a0611dd646a68c724979cbfecf159d" "5b4cfa854ca0c058218f62d2241ecbc888857ffa3e957c6c9692cd9a3595779c" "ef7168829f01170e3c3afc87dd27ffb4ef1da254d74796ce8ae47061c650473d" "d689cc040fb617f69c0cd25c65a068163aa0579a9a9c9ad316cb72b19036b080" "aac0aa2862dbce26e6e9e11db369d3994b5dedee13b5608f7452ebf388718ff5" "fee6601aeec81d57fb558b36ca82ecc56f8acf031038219d2bead49896bba2ef" "85fd57e0635122f990ef3cc352d9de9fc04074e834f2e2a543a1db6ec95361f4" "b11e8d24fc519a0d99ec0dfc2fa72a5c3cb7cb95ae361fd18cdfebb22ef7ef1e" "616600a22c9d10412f195219cc335b1bb3bb7179f848c7877a093daa56ceda74" "3661051320bac146099c45996cc8dece07d06b47e9cced47e399c32d9d85e3da" "51d0793c0a0775a475e3688ea85f335a28fd8a6bda7a5350f17cfa017279bb95" "a722c36ced3eae0d77feaafa29dc59c77b15d08df6402b611b5a3f72a3c72d41" "5752f05dba47b64ac9d54f8254b090579928d95819a84f07348e3469219a1c17" "11a25dedf965443869976817977595dbe55a46a429573d24edbadd4f10080831" "45194cdd8181e9578c5a36f22bdd6815c350aecf1d3dc8811b0ce6121606268b" "252a3be6365216d581b68dab60b257df5692cbcb60c53e9932a2f7978961ac78" "bf1b20845244e086a71225982514402be1c57930a38c70fa30be60966eb2528a" "d9f32d3cf2297bf8f259b0a46980a431efeb33bb8be23fbf8e49df7dead8bada" "69a42dc44a4e06e67c7549ba371c790e7151bbc2efed2fc4d5c4dda66a4a49c8" "fd467b6e896dd8729811f54eb5b414117710fbece21d58e758f4e5ca0c314586" "affbd9c4e954d1873156e445ddf6d0e360dba5242a4bbabb2d6b7daa529e3723" "ca025825138d45c3d0cc4b493be22bd812ddf5ce331b45a1d41f74b9f62db07f" "96065bb5a809aae8b75de4515ecdac322e00c2c9cc115cfee44718e10ef19d7f" "6888dd952439a97a441aecc2afe257c0d037c0c3af55f2143cc1ef908b746704" "90501e2c87f758e6b2fc6bb19485d3575c6ad76cfda6bbee5b88232f9d3297f1" "0652dc7dfd351093be2d3b01bcbebadd217477b7176f335d54bf1d380786d4d3" "6ce5c7a349b1f553ab9e0da818dd233a92cd77ed7af7af91b431e2bc6b81a9c0" "97e8d00c435b49dac987f05dba1144663448ff3db18fa61b11ce280c93c9951f" "ce5049b1e27275630bdb29b3fda54190e8b771ba95f4183549253167f0580810" "c48d13bdee76b837e57a4ded50c08a342186231a5889715981d8a49bc71c2fce" "af478651415098f9a999f2f0adf436420f0104938b4dba26c911e2401f1f1afa" "1fa0159e3a492bb387405face1d841bf6192dfccf62e01d155e9681c0b4bd1c2" "51a0c6fad8a1ad1243f2c5cc6ece7e6078ee59fc36298e6e8ce3714498eb3464" "2cbe24bd2e1d6e571429cc41db7f101e217fb746e8e62bd152f77d04d63e2ef7" "d7f3247fef7f4434d25c7e4fad8e132faefd5860648f736681a3ffc9ffc18544" "dcec570f8977c18c3002efa2c22a6effb330b8695cb212d12cecaa2563948514" "c50eb0aa0d77c58516863e288fe9e593418508d7777b49ee92819f622df7eb49" "69a1d459c01a8a3cb935bca5c7ac0839f9b134d6004537bd8321599518d56dee" "ba708b085135787d612b4ed5f20158870fe2c95dcd2b88c624bf526e1039fc21" "06b3073b390f99f08f97bb17355db34c66510d48585ae97e290e949cd27ea1bf" default)))
 '(js2-basic-offset 2)
 '(package-selected-packages
   (quote
    (forest-blue-theme zenburn-theme zen-and-art-theme yaml-mode xterm-color xkcd white-sand-theme web-mode web-beautify unfill underwater-theme ujelly-theme typit mmt twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme thrift tao-theme tangotango-theme tango-plus-theme tango-2-theme tagedit sunny-day-theme sudoku sublime-themes subatomic256-theme subatomic-theme stan-mode sqlup-mode sql-indent spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smeargle slim-mode shell-pop seti-theme scss-mode scad-mode sass-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe reverse-theme reveal-in-osx-finder restclient-helm rebecca-theme rbenv rake rainbow-mode rainbow-identifiers railscasts-theme qml-mode purple-haze-theme pug-mode professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme pbcopy pacmacs osx-trash osx-dictionary orgit organic-green-theme org-projectile org-category-capture org-present org-pomodoro alert log4e gntp org-mime org-download omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme ob-restclient ob-http noflet noctilux-theme naquadah-theme mwim mustang-theme multi-term monokai-theme monochrome-theme molokai-theme moe-theme mmm-mode minitest minimal-theme matlab-mode material-theme markdown-toc markdown-mode majapahit-theme magit-gitflow magit-gh-pulls madhat2r-theme lush-theme livid-mode skewer-mode simple-httpd light-soap-theme less-css-mode launchctl json-mode json-snatcher json-reformat js2-refactor js2-mode js-doc jbeans-theme jazz-theme jade-mode ir-black-theme intero inkpot-theme htmlize hlint-refactor hindent heroku-theme hemisu-theme helm-hoogle helm-gitignore helm-css-scss helm-company helm-c-yasnippet hc-zenburn-theme haskell-snippets haml-mode gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme gnuplot gitignore-mode github-search github-clone github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter gist gh marshal logito pcache ht gh-md geeknote gandalf-theme fuzzy flycheck-pos-tip pos-tip flycheck-haskell flycheck flatui-theme flatland-theme farmhouse-theme exotica-theme evil-magit magit magit-popup git-commit ghub let-alist with-editor evil-commentary ess-smart-equals ess-R-data-view ctable ess julia-mode espresso-theme eshell-z eshell-prompt-extras esh-help ensime sbt-mode scala-mode emoji-cheat-sheet-plus emmet-mode dracula-theme django-theme diff-hl darktooth-theme autothemer darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme company-web web-completion-data company-tern dash-functional tern company-statistics company-restclient restclient know-your-http-well company-ghci company-ghc ghc haskell-mode company-emoji company-cabal company color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized color-identifiers-mode coffee-mode cmm-mode clues-theme clojure-snippets clj-refactor inflections edn multiple-cursors paredit peg cider-eval-sexp-fu cider seq queue clojure-mode chruby cherry-blossom-theme busybee-theme bundler inf-ruby bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme auto-yasnippet yasnippet arduino-mode apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes afternoon-theme ac-ispell auto-complete 2048-game ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint indent-guide hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu elisp-slime-nav dumb-jump diminish define-word column-enforce-mode clean-aindent-mode auto-highlight-symbol auto-compile aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line)))
 '(paradox-github-token t)
 '(ring-bell-function (quote ignore)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))

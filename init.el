;; -*- mode: emacs-lisp -*-

(defun dotspacemacs/layers ()
  "
  Configuration Layers declaration. You should not put any user code in this function besides modifying the variable values.
  "
  (setq-default
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-enable-lazy-installation 'unused
   dotspacemacs-ask-for-lazy-installation t
   dotspacemacs-configuration-layer-path '()
   dotspacemacs-configuration-layers
   '(
     go
     auto-completion
     better-defaults
     clojure
     emacs-lisp
     git
     helm
     javascript
     markdown
     react
     redshift
     syntax-checking
     theming
     version-control
     vimscript
     yaml
     (shell :variables
            shell-default-shell 'ansi-term
            shell-default-position 'right))
   dotspacemacs-additional-packages '(tern haxe-mode)
   dotspacemacs-frozen-packages '()
   dotspacemacs-excluded-packages
   '(
     url
     vi-tilde-fringe
     vim-powerline
     rainbow-delimiters))

  dotspacemacs-install-packages 'used-only)

(defun dotspacemacs/init ()
  "
  Initialization function.\
  This function is called at the very startup of Spacemacs initialization before layers configuration.\
  You should not put any user code in there besides modifying the variable values.\
  "
  (setq-default

   dotspacemacs-default-font '("DejaVu Sans Mono" :size 13 :weight normal :width normal :powerline-scale 1)
   dotspacemacs-startup-banner 'nil
   dotspacemacs-display-default-layout t
   dotspacemacs-fullscreen-at-startup t
   dotspacemacs-highlight-delimiters nil

   spacemacs-theme-comment-bg nil ; This toggles a background color for the comment lines.
   spacemacs-theme-org-agenda-height nil ; This toggles the use of varying org agenda heights.
   spacemacs-theme-org-height nil ; This toggles the use of varying org headings heights.
   spacemacs-theme-org-highlight nil ; This toggles highlighting of org headings.

   ;; ---- generated defaults below ----

   dotspacemacs-elpa-https t
   dotspacemacs-elpa-timeout 5
   dotspacemacs-check-for-update nil
   dotspacemacs-elpa-subdirectory nil
   dotspacemacs-editing-style 'vim
   dotspacemacs-verbose-loading nil
   dotspacemacs-startup-lists '((recents . 5) (projects . 7))
   dotspacemacs-startup-buffer-responsive t
   dotspacemacs-scratch-mode 'text-mode
   dotspacemacs-themes '(spacemacs-dark
                         sanityinc-tomorrow-eighties
                         sanityinc-tomorrow-night)
   dotspacemacs-colorize-cursor-according-to-state t
   dotspacemacs-leader-key "SPC"
   dotspacemacs-emacs-command-key "SPC"
   dotspacemacs-ex-command-key ":"
   dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-major-mode-leader-key ","
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   dotspacemacs-distinguish-gui-tab nil
   dotspacemacs-remap-Y-to-y$ nil
   dotspacemacs-retain-visual-state-on-shift t
   dotspacemacs-visual-line-move-text nil
   dotspacemacs-ex-substitute-global nil
   dotspacemacs-default-layout-name "Default"
   dotspacemacs-auto-resume-layouts nil
   dotspacemacs-large-file-size 1
   dotspacemacs-auto-save-file-location 'cache
   dotspacemacs-max-rollback-slots 5
   dotspacemacs-helm-resize nil
   dotspacemacs-helm-no-header nil
   dotspacemacs-helm-position 'bottom
   dotspacemacs-helm-use-fuzzy 'always
   dotspacemacs-enable-paste-transient-state nil
   dotspacemacs-which-key-delay 0.4
   dotspacemacs-which-key-position 'bottom
   dotspacemacs-loading-progress-bar t
   dotspacemacs-fullscreen-use-non-native nil
   dotspacemacs-maximized-at-startup nil
   dotspacemacs-active-transparency 90
   dotspacemacs-inactive-transparency 90
   dotspacemacs-show-transient-state-title t
   dotspacemacs-show-transient-state-color-guide t
   dotspacemacs-mode-line-unicode-symbols t
   dotspacemacs-smooth-scrolling t
   dotspacemacs-line-numbers nil
   dotspacemacs-folding-method 'evil
   dotspacemacs-smartparens-strict-mode nil
   dotspacemacs-smart-closing-parenthesis nil
   dotspacemacs-persistent-server nil
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   dotspacemacs-default-package-repository nil
   dotspacemacs-whitespace-cleanup nil))


(defun dotspacemacs/user-init ()
  "
  Initialization function for user code.
  It is called immediately after `dotspacemacs/init', before layer configuration executes.
  This function is mostly useful for variables that need to be set before packages are loaded.
  If you are unsure, you should try in setting them in `dotspacemacs/user-config' first.
  ")


(defun dotspacemacs/user-config ()
  "
  Configuration function for user code.
  This function is called at the very end of Spacemacs initialization after layers configuration.
  This is the place where most of your configurations should be done.
  Unless it is explicitly specified that a variable should be set before a package is loaded, you should place your code here.
  "
  (setq git-gutter-fr+-side 'left-fringe) ; git gutter marks near the line numbers
  (setq powerline-default-separator 'nil)

  (setq sp-show-pair-delay 0)

  (setq neo-theme 'nerd)
  (setq neo-vc-integration '(face char)) ; show git status
  (setq neo-smart-open t) ; Every time when the neotree window is opened, let it find current file and jump to node.
  (setq neo-vc-state-char-alist
        '((up-to-date       . ?\s)
          (edited           . ?*)
          (added            . ?+)
          (removed          . ?-)
          (missing          . ?!)
          (needs-merge      . ?M)
          (conflict         . ?!)
          (unlocked-changes . ?!)
          (needs-update     . ?U)
          (ignored          . ?\s)
          (user             . ?U)
          (unregistered     . ?\s)
          (nil              . ?\s)))

  (add-hook 'hack-local-variables-hook (lambda () (setq truncate-lines t))) ; disable text folding everwhere

  (spacemacs/set-leader-keys "ok" 'erase-buffer))

  ;; TODO These don't actuall work?!
  ;; (spacemacs/toggle-line-numbers-on)
  ;; (spacemacs/toggle-truncate-lines-on)
  ;; (spacemacs/toggle-golden-ratio-on)

;; -----------------------------------------------------------------------------

;; Do not write anything past this comment. This is where Emacs will auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (haxe-mode go-guru go-eldoc company-go go-mode parinfer zonokai-theme zenburn-theme zen-and-art-theme yaml-mode xterm-color ws-butler window-numbering which-key web-mode web-beautify volatile-highlights vimrc-mode uuidgen use-package underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme tronesque-theme toxi-theme toc-org tao-theme tangotango-theme tango-plus-theme tango-2-theme tagedit sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spaceline powerline spacegray-theme soothe-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smeargle slim-mode shell-pop seti-theme scss-mode sass-mode reverse-theme restart-emacs railscasts-theme purple-haze-theme pug-mode professional-theme popwin planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme persp-mode pcre2el pastels-on-dark-theme paren-face paradox orgit org organic-green-theme org-plus-contrib org-bullets open-junk-file omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme niflheim-theme neotree naquadah-theme mwim mustang-theme multi-term move-text monokai-theme monochrome-theme molokai-theme moe-theme mmm-mode minimal-theme material-theme markdown-toc markdown-mode majapahit-theme magit-gitflow macrostep lush-theme lorem-ipsum livid-mode skewer-mode simple-httpd linum-relative link-hint light-soap-theme less-css-mode json-mode json-snatcher json-reformat js2-refactor js2-mode js-doc jbeans-theme jazz-theme ir-black-theme inkpot-theme info+ indent-guide ido-vertical-mode hungry-delete hl-todo hiwin highlight-parentheses highlight-numbers parent-mode highlight-indentation hide-comnt heroku-theme hemisu-theme help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make projectile helm-gitignore request helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag hc-zenburn-theme haml-mode gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme google-translate golden-ratio gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter gh-md gandalf-theme flycheck-pos-tip pos-tip flycheck flx-ido flx flatui-theme flatland-theme firebelly-theme fill-column-indicator farmhouse-theme fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit magit magit-popup git-commit with-editor evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree espresso-theme eshell-z eshell-prompt-extras esh-help emmet-mode elisp-slime-nav dumb-jump f dracula-theme django-theme diminish diff-hl define-word darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme dactyl-mode cyberpunk-theme company-web web-completion-data company-tern dash-functional tern company-statistics company column-enforce-mode color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized coffee-mode clues-theme clojure-snippets clj-refactor hydra inflections edn multiple-cursors paredit s peg clean-aindent-mode cider-eval-sexp-fu eval-sexp-fu highlight cider seq spinner queue pkg-info clojure-mode epl cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme bind-map bind-key badwolf-theme auto-yasnippet yasnippet auto-highlight-symbol auto-compile packed dash apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes aggressive-indent afternoon-theme adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core async ac-ispell auto-complete popup quelpa package-build spacemacs-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 

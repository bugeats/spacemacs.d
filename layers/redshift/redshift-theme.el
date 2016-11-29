;;; -*- lexical-binding: t -*-
;; Filename: redshift-theme.el

(deftheme redshift "Mellow and smooth")

(define-fringe-bitmap 'left-arrow
  [#b00000000
   #b00000010
   #b00000110
   #b00001110
   #b00011110
   #b00111110
   #b01111110
   #b00000000])

(define-fringe-bitmap 'right-arrow
  [#b00000000
   #b01000000
   #b01100000
   #b01110000
   #b01111000
   #b01111100
   #b01111110
   #b00000000])

 (let (
       (p-a1 "#d8af8e")
       (p-a2 "#a57b55")
       (p-a3 "#645851")
       (p-a4 "#413c39")
       (p-a5 "#2d2b29")
       (p-a6 "#272524")
       (p-b1 "#94c390")
       (p-b2 "#5d9058")
       (p-b3 "#525e51")
       (p-b4 "#393e39")
       (p-b5 "#2a2c29")
       (p-b6 "#242624")
       (p-d1 "#b8b8aa")
       (p-d2 "#84847c")
       (p-d3 "#5b5b56")
       (p-d4 "#3d3d3a")
       (p-d5 "#2c2c29")
       (p-d6 "#262624")
       (p-g1 "#bbba81")
       (p-g2 "#888744")
       (p-g3 "#5c5b4e")
       (p-g4 "#3d3d37")
       (p-g5 "#2c2c29")
       (p-g6 "#262624")
       (p-k1 "#83bfda")
       (p-k2 "#418da9")
       (p-k3 "#4f5d64")
       (p-k4 "#383e41")
       (p-k5 "#292c2d")
       (p-k6 "#242627")
       (p-t1 "#71c6af")
       (p-t2 "#22947b")
       (p-t3 "#4b5f59")
       (p-t4 "#363f3c")
       (p-t5 "#282c2b")
       (p-t6 "#242625")

       (sol-base03  "#002b36")
       (sol-base02  "#073642")
       (sol-base01  "#586e75")
       (sol-base00  "#657b83")
       (sol-base0   "#839496")
       (sol-base1   "#93a1a1")
       (sol-base2   "#eee8d5")
       (sol-base3   "#fdf6e3")
       (sol-yellow  "#b58900")
       (sol-orange  "#cb4b16")
       (sol-red     "#dc322f")
       (sol-magenta "#d33682")
       (sol-violet  "#6c71c4")
       (sol-blue    "#268bd2")
       (sol-cyan    "#2aa198")
       (sol-green   "#859900")
       )

    (defface wut
      `(
        (((class color) (min-colors 88) (background light))
         :foreground ,p-a3
         :background ,p-a5)
        (((class color) (min-colors 88) (background dark))
         :foreground ,p-a3
         :background ,p-a5)
        (((class color) (min-colors 16) (background light))
         :foreground ,p-a3
         :background ,p-a5)
        (((class color) (min-colors 16) (background dark))
         :foreground ,p-a3
         :background ,p-a5)
        (((class color) (min-colors 8))
         :foreground ,p-a3
         :background ,p-a5)
        (t :inverse-video t))
      "Basic face for highlighting."
      :group 'basic-faces)

   ;; TODO does this work?
   (mapcar (lambda(fb) (set-fringe-bitmap-face fb 'wut))
           fringe-bitmaps)

   (defun clobber (face-args face-names)
     (mapcar (lambda (name)
               (custom-theme-set-faces 'redshift
                                       `(,name ((t ,face-args)))
                                       )
               )
             face-names
             )
     )

   (clobber
    `(:foreground ,p-a2 :background nil :weight normal)
    '(
      neo-banner-face
      neo-button-face
      neo-dir-link-face
      neo-expand-btn-face
      neo-file-link-face
      neo-header-face
      neo-root-dir-face
      neo-vc-added-face
      neo-vc-conflict-face
      neo-vc-default-face
      neo-vc-edited-face
      neo-vc-ignored-face
      neo-vc-missing-face
      neo-vc-needs-merge-face
      neo-vc-needs-update-face
      neo-vc-removed-face
      neo-vc-unlocked-changes-face
      neo-vc-unregistered-face
      neo-vc-up-to-date-face
      neo-vc-user-face
      )
    )


   ;; Set faces
   (custom-theme-set-faces 'redshift
    `(default                 ((t (:foreground ,p-d1 :background ,p-a6 :weight normal))))

    `(sp-show-pair-match-face ((t (:foreground ,p-k1))))
    `(parenthesis             ((t (:foreground ,p-a2))))

    `(font-lock-builtin-face       ((t (:foreground ,p-d1))))
    `(font-lock-comment-face       ((t (:foreground ,p-d2))))
    `(font-lock-constant-face      ((t (:foreground ,p-b1))))
    `(font-lock-doc-face           ((t (:foreground ,p-g1))))
    `(font-lock-function-name-face ((t (:foreground ,p-b1))))
    `(font-lock-keyword-face       ((t (:foreground ,p-b1 :weight normal))))
    `(font-lock-negation-char-face ((t (:foreground ,p-b1))))
    `(font-lock-preprocessor-face  ((t (:foreground ,p-b1))))
    `(font-lock-reference-face     ((t (:foreground ,p-b1))))
    `(font-lock-string-face        ((t (:foreground ,p-g1))))
    `(font-lock-type-face          ((t (:foreground ,p-b1))))
    `(font-lock-variable-name-face ((t (:foreground ,p-b1))))
    `(font-lock-warning-face       ((t (:foreground ,p-k1))))

    `(hl-todo         ((t (:foreground ,p-k2 :background ,p-k4))))

;;; chrome
    `(hl-line         ((t (:background ,p-a5))))
    `(hiwin-face      ((t (:background "#1A1615")))) ; windows that don't have focus
    `(vertical-border ((t (:foreground ,p-a3))))
    `(fringe          ((t (:background ,p-a5))))
    `(linum           ((t (:foreground ,p-a4 :background ,p-a5))))

    `(region          ((t (:background ,p-k4))))

    `(mode-line           ((t (:foreground ,p-a2 :background ,p-a5 :box (:color ,p-a4 :line-width 1)))))
    `(mode-line-inactive  ((t (:foreground ,p-a3 :background ,p-a6 :box (:color ,p-a4 :line-width 1)))))
    `(mode-line-buffer-id ((t (:foreground ,p-a2 :background ,p-a6))))
    `(powerline-active1   ((t (:foreground ,p-a2 :background ,p-a4))))
    `(powerline-active2   ((t (:foreground ,p-a2 :background ,p-a4))))
    `(powerline-inactive1 ((t (:foreground ,p-a3 :background ,p-a6))))
    `(powerline-inactive2 ((t (:foreground ,p-a3 :background ,p-a6))))

    `(helm-source-header ((t (:foreground ,p-a1 :background ,p-a6 :underline t))))
    `(helm-selection ((t (:foreground ,p-d1 :background ,p-k4))))

    `(term               ((t (:foreground ,p-a1 :background nil))))
    `(term-bold          ((t (:foreground ,p-d1))))
    `(term-color-black   ((t (:foreground ,p-d1))))
    `(term-color-blue    ((t (:foreground ,sol-blue))))
    `(term-color-cyan    ((t (:foreground ,sol-cyan))))
    `(term-color-green   ((t (:foreground ,sol-green))))
    `(term-color-magenta ((t (:foreground ,sol-magenta))))
    `(term-color-red     ((t (:foreground ,sol-red))))
    `(term-color-white   ((t (:foreground ,p-d1))))
    `(term-color-yellow  ((t (:foreground ,sol-yellow))))
    `(term-underline     ((t (:foreground ,p-d1))))

    )

   ;; Set variables
   (custom-theme-set-variables 'redshift ;; again specify the same theme name...
    '(any-variable "wut")
    )
   )

(provide-theme 'redshift)

;; redshift-theme.el ends here

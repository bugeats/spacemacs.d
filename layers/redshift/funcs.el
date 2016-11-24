(defun redshift/clobber-faces ()
  (custom-set-faces
   `(hiwin-face ((t (:background "#1A1615" :foreground ,p-a3))) t) ; windows that don't have focus
   `(default ((t (:foreground ,p-d1 :background ,p-a6))) t)
   `(sp-show-pair-match-face ((t (:foreground ,p-k1))) t)
   `(parenthesis ((t (:foreground ,p-a2))))
   )
  )

(defun redshift/clobber-spacemacs ()
  (message "clobber-spacemacs")
  (custom-set-variables
   '(spacemacs-theme-custom-colors '((bg1 . "black")
                                     (act1 . "black")
                                     (bg2 . "black")
                                     (lnum . "brightwhite"))))
  )

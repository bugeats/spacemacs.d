;;; packages.el --- redshift layer packages file for Spacemacs.
;;
;; Author: Chadwick Dahlquist <chadwick@bugeats.net>
;; URL: https://github.com/bugeats

(defconst redshift-packages
  '(paren-face hiwin spacemacs-theme)
  )

(defun redshift/init-paren-face ()
  (use-package paren-face
    :demand t
    :commands (global-paren-face-mode)
    :config
    (progn
      (setq paren-face-regexp (rx (any "{}();<>,`''=\".")))
      (global-paren-face-mode t)
      (custom-set-faces
       `(parenthesis ((t (:foreground ,p-a2)))))
      )))

(defun redshift/init-hiwin ()
  (use-package hiwin
    :config
    (hiwin-activate)
    ;; Yay this works
    (custom-set-faces
     ;; hiwin-face is windows that don't have focus
     `(hiwin-face ((t (:background ,p-a5))) t)
     )
  )
)

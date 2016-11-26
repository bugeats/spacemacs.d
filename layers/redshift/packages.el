;;; packages.el --- redshift layer packages file for Spacemacs.
;;
;; Author: Chadwick Dahlquist <chadwick@bugeats.net>
;; URL: https://github.com/bugeats

(defconst redshift-packages
  '(paren-face hiwin)
  )

(defun redshift/init-paren-face ()
  (use-package paren-face
    :demand t
    :commands (global-paren-face-mode)
    :config
    (progn
      (setq paren-face-regexp (rx (any "{}();<>,`''=\".")))
      (global-paren-face-mode t)
      )))

(defun redshift/init-hiwin ()
  (use-package hiwin
    :config
    (progn
      (hiwin-activate)
      )))

;;; packages.el --- redshift layer packages file for Spacemacs.
;;
;; Author: Chadwick Dahlquist <chadwick@bugeats.net>
;; URL: https://github.com/bugeats

(defconst redshift-packages
  '(paren-face hiwin parinfer))


(defun redshift/init-paren-face ()
  (use-package paren-face
    :demand t
    :commands (global-paren-face-mode)
    :config
    (progn
      (setq paren-face-regexp (rx (any "{}();<>,`''=\".")))
      (global-paren-face-mode t))))


(defun redshift/init-hiwin ()
  (use-package hiwin
    :config
    (progn
      (hiwin-activate))))


(defun redshift/init-parinfer ()
  (use-package parinfer
    :defer t
    :diminish parinfer-mode
    :init
    (progn
      (add-hook 'emacs-lisp-mode-hook 'parinfer-mode)
      (add-hook 'clojure-mode-hook 'parinfer-mode)
      (add-hook 'common-lisp-mode-hook 'parinfer-mode)
      (add-hook 'scheme-mode-hook 'parinfer-mode)
      (add-hook 'lisp-mode-hook 'parinfer-mode)
      (spacemacs|add-toggle parinfer-indent
        :evil-leader "tP"
        :documentation "Enable Parinfer Indent Mode."
        :if (bound-and-true-p parinfer-mode)
        :status (eq parinfer--mode 'indent)
        :on (parinfer-toggle-mode)
        :off (parinfer-toggle-mode))
      (setq parinfer-extensions '(defaults pretty-parens evil smart-yank)))))

;;; packages.el ends here

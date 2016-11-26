;; (add-to-list 'paren-face-modes 'emacs-lisp-mode)
;; (add-to-list 'paren-face-modes 'javascript-mode)
;; (add-to-list 'paren-face-modes 'j2-mode)

;; (font-lock-add-keywords 'j2-mode
;;                         `(;; Type assertions
;;                           (,(rx (any ":")) 0 'parenthesis)
;;                           ;; Generic type parameters
;;                           (,(rx (group "(") symbol-start) 1 'parenthesis)
;;                           (,(rx symbol-end (group (+ ")"))) 1 'parenthesis)))

;; (defun redshift/pre-init-spacemacs-theme ()
;;   (custom-set-variables
;;     '(spacemacs-theme-custom-colors
;;       '((act1 . "#ff0000")
;;         (act2 . "#0000ff")
;;         (base . "#ff0000")))
;;     )
;;     ;; (setq theming-modifications '((spacemacs-dark `(default :background ,p-a6 :foreground ,p-d1)
;;     ;;                                               `(js2-function-param :foreground ,p-d1)
;;     ;;                                               `(term :background ,p-a5)
;;     ;;                                               `(font-lock-constant-face :foreground nil :underline nil))))
;;   )

;; (defun redshift/init-spacemacs-theme ()
;;   (use-package spacemacs-theme
;;     ;; :ensure t
;;     ;; :defer t
;;     ;; :init
;;     :config
;;     (load-theme 'spacemacs-dark t)
;;     )
;;   )

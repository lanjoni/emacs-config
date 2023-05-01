;;; package -- Summary
;;; Commentary:
;;
;; lanjoni's Emacs configuration
;;
;; file: ~/.emacs.d/init.el
;; author: João Augusto Lissoni Lanjoni <joaoaugustolanjoni@gmail.com>
;; Apr 30, 2023

;;; Code:

(setq make-backup-files nil)
(setq create-lockfiles nil)

;; Auto refresh
(global-auto-revert-mode t)
(setq-default auto-revert-use-notify nil)

;; Identation & coding style
(setq-default default-tab-width 2)
(setq-default tab-width 2)
(setq-default tab-always-indent t)
(setq-default indent-tabs-mode nil)
(setq-default c-default-style "bsd"
              c-basic-offset 2
              nasm-basic-offset 2
              python-default-offset 2
              python-indent-offset 2
              python-default-offset 2
              python-indent 2
              css-indent-offset 2
              json-encoding-default-indentation 2
              elm-indent-offset 2
              js-indent-level 2
              rust-indent-offset 2)

(define-key global-map (kbd "M-w") 'previous-line)
(define-key global-map (kbd "M-a") 'backward-char)
(define-key global-map (kbd "M-s") 'next-line)
(define-key global-map (kbd "M-d") 'forward-char)
(define-key global-map (kbd "M-t") 'treemacs)
(define-key global-map (kbd "M-f") 'treemacs-project-follow-mode)

;; Ctrl-c Ctrl-v
(cua-mode)

;; Code completion
(global-flycheck-mode)
(global-company-mode t)
(auto-complete-mode t)

(provide 'lanjoni-workflow)

;;; workflow.el ends here

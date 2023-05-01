;;; package --- Summary
;;; Commentary:
;;
;; lanjoni's Emacs configuration.
;;
;; file: ~/.emacs.d/packages.el
;; author: João Augusto Lissoni Lanjoni <joaoaugustolanjoni@gmail.com>
;; date: Apr 30, 2023

;;; Code:

(require 'package)
(require 'auto-complete)
(require 'company)
(require 'flycheck)
(require 'projectile)
(require 'all-the-icons)
(require 'lsp-mode)
 
(custom-set-variables
 '(package-archives
   (quote (("gnu" . "https://elpa.gnu.org/packages/")
           ("melpa" . "https://melpa.org/packages/")))))

(package-initialize)

;; Debugging
(defun lsp-install-save-hooks ()
  "Hooks for golang debugging."
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t)
  (lsp))

(add-hook 'go-mode-hook #'lsp-install-save-hooks)
(add-hook 'c-mode-hook #'lsp-install-save-hooks)
(add-hook 'cpp-mode-hook #'lsp-install-save-hooks)

(lsp-register-custom-settings
 '(("gopls.completeUnimported" t t)
   ("gopls.staticcheck" t t)))

;; vendors
(load-file "~/.emacs.d/splash-screen.el")

(provide 'lanjoni-packages)
;;; packages.el ends here
